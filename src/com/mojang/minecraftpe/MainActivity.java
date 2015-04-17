package com.mojang.minecraftpe;

import android.app.*;
import android.content.*;
import android.content.pm.*;
import android.content.res.*;
import android.database.*;
import android.graphics.*;
import android.graphics.drawable.*;
import android.media.*;
import android.os.*;
import android.provider.*;
import android.text.*;
import android.util.*;
import android.view.*;
import android.view.inputmethod.*;
import android.widget.*;
import java.io.*;
import java.lang.reflect.*;
import java.net.*;
import java.nio.*;
import java.text.*;
import java.util.*;
import net.yosi.isageek.atomiclauncher.*; // import ALL the things


public class MainActivity extends NativeActivity {

	PackageInfo packageInfo;
	ApplicationInfo appInfo;
	String libraryDir;
	String libraryLocation;
	boolean canAccessAssets = false;
	Context apkContext = null;
	DisplayMetrics metrics;

	boolean mcpePackage = false;

	public static ByteBuffer minecraftLibBuffer = null;
	public static MainActivity activity = null;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		activity = this;

		try {
			packageInfo = getPackageManager().getPackageInfo(
					"com.mojang.minecraftpe", 0);
			appInfo = packageInfo.applicationInfo;
			libraryDir = appInfo.nativeLibraryDir;
			libraryLocation = libraryDir + "/libminecraftpe.so";
			System.out.println("libminecraftpe.so is located at " + libraryDir);
			canAccessAssets = !appInfo.sourceDir
					.equals(appInfo.publicSourceDir);
			// int minecraftVersionCode = packageInfo.versionCode;

			if (this.getPackageName().equals("com.mojang.minecraftpe")) {
				apkContext = this;
			} else {
				apkContext = createPackageContext("com.mojang.minecraftpe",
						Context.CONTEXT_IGNORE_SECURITY);
			}

			System.load(libraryLocation);

			metrics = new DisplayMetrics();
			getWindowManager().getDefaultDisplay().getMetrics(metrics);
			setVolumeControlStream(AudioManager.STREAM_MUSIC);
			addLibraryDirToPath(libraryDir);
			mcpePackage = true;
			super.onCreate(savedInstanceState);

			try {

				NativeHandler.init();

			} catch(Exception e) {
				e.printStackTrace();
			}
			
			getWindow().getDecorView().post(new Runnable() {
				public void run() {
					//setupTestButton();
				}
			});

			nativeRegisterThis();
			mcpePackage = false;

			int flag = Build.VERSION.SDK_INT >= 19 ? 0x40000000 : 0x08000000; // FLAG_NEEDS_MENU_KEY
			getWindow().addFlags(flag);
		} catch (Exception e) {
			e.printStackTrace();
			finish();
		}

	}
	
	@Override
	public void onWindowFocusChanged(boolean hasFocus) {
        super.onWindowFocusChanged(hasFocus);
		View decorView = getWindow().getDecorView();
		if (hasFocus) {
			decorView.setSystemUiVisibility(
                View.SYSTEM_UI_FLAG_LAYOUT_STABLE
                | View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION
                | View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN
                | View.SYSTEM_UI_FLAG_HIDE_NAVIGATION
                | View.SYSTEM_UI_FLAG_FULLSCREEN
                | View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY);}
	}

	private File[] addToFileList(File[] files, File toAdd) {
		for (File f : files) {
			if (f.equals(toAdd)) {
				// System.out.println("Already added path to list");
				return files;
			}
		}
		File[] retval = new File[files.length + 1];
		System.arraycopy(files, 0, retval, 1, files.length);
		retval[0] = toAdd;
		return retval;
	}

	public static Field getDeclaredFieldRecursive(Class<?> clazz, String name) {
		if (clazz == null)
			return null;
		try {
			return clazz.getDeclaredField(name);
		} catch (NoSuchFieldException nsfe) {
			return getDeclaredFieldRecursive(clazz.getSuperclass(), name);
		}
	}

	private void addLibraryDirToPath(String path) {
		try {
			ClassLoader classLoader = getClassLoader();
			Class<? extends ClassLoader> clazz = classLoader.getClass();
			Field field = getDeclaredFieldRecursive(clazz, "pathList");
			field.setAccessible(true);
			Object pathListObj = field.get(classLoader);
			Class<? extends Object> pathListClass = pathListObj.getClass();
			Field natfield = getDeclaredFieldRecursive(pathListClass,
					"nativeLibraryDirectories");
			natfield.setAccessible(true);
			File[] fileList = (File[]) natfield.get(pathListObj);
			File[] newList = addToFileList(fileList, new File(path));
			if (fileList != newList)
				natfield.set(pathListObj, newList);
			// check
			// System.out.println("Class loader shenanigans: " +
			// ((PathClassLoader) getClassLoader()).findLibrary("minecraftpe"));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public PackageManager getPackageManager() {
		if (mcpePackage) {
			return new RedirectPackageManager(super.getPackageManager(), libraryDir);
		}
		return super.getPackageManager();
	}

	native void nativeBackPressed();

    native void nativeBackSpacePressed();

    native void nativeLoginData(String s, String s1, String s2, String s3);

    native void nativeOnPickImageCanceled(long l);

    native void nativeOnPickImageSuccess(long l, String s);

    native void nativeRegisterThis();

    native void nativeReturnKeyPressed();

    native void nativeSetTextboxText(String s);

    native void nativeStopThis();

    native void nativeSuspend();

    native void nativeTypeCharacter(String s);

    native void nativeUnregisterThis();

	protected void onActivityResult(int i, int j, Intent intent) {
        super.onActivityResult(i, j, intent);
        if (i == RESULT_PICK_IMAGE && j == -1 && intent != null)
        {
            android.net.Uri uri = intent.getData();
            String as[] = {
                "_data"
            };
            Cursor cursor = getContentResolver().query(uri, as, null, null, null);
            cursor.moveToFirst();
            String s = cursor.getString(cursor.getColumnIndex(as[0]));
            nativeOnPickImageSuccess(callback, s);
            callback = 0;
            cursor.close();
            return;
        } else
        {
            nativeOnPickImageCanceled(callback);
            callback = 0;
            return;
        }
    }

	public void buyGame() {
	}

	public int checkLicense() {
		return 0;
	}

	public void displayDialog(int dialogId) {
		Log.d("AtomicLauncher", "[displayDialog] Dialog ID:" + dialogId);
	}

	public String getDateString(int time) {
		System.out.println("getDateString: " + time);
		return DateFormat.getDateInstance(DateFormat.SHORT, Locale.US).format(
				new Date(((long) time) * 1000));
	}

	public byte[] getFileDataBytes(String name) {
		System.out.println("Get file data: " + name);
		try {
			InputStream is = getInputStreamForAsset(name);
			if (is == null) {
				Log.e("AtomicLauncher", "FILE IS NULL!");
				return null;
			}
			// can't always find length - use the method from
			// http://www.velocityreviews.com/forums/t136788-store-whole-inputstream-in-a-string.html
			// instead
			ByteArrayOutputStream bout = new ByteArrayOutputStream();
			byte[] buffer = new byte[1024];
			while (true) {
				int len = is.read(buffer);
				if (len < 0) {
					break;
				}
				bout.write(buffer, 0, len);
			}
			byte[] retval = bout.toByteArray();

			return retval;
		} catch (Exception e) {
			return null;
		}
	}

	//public ArrayList<TexturePack> texturePacks = new ArrayList<TexturePack>();

	protected InputStream getInputStreamForAsset(String name) {
		try {

			/*for (int i = 0; i < texturePacks.size(); i++) {
				try {
					InputStream is = texturePacks.get(i).getInputStream(name);
					if (is != null)
						return is;
				} catch (IOException e) {
				}
			}*/

			return getLocalInputStreamForAsset(name);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	protected InputStream getLocalInputStreamForAsset(String name) {
		InputStream is = null;
		try {
			/*
			 * if (forceFallback) { return getAssets().open(name); }
			 */
			try {
				is = apkContext.getAssets().open(name);
			} catch (Exception e) {
				e.printStackTrace();
				// System.out.println("Attempting to load fallback");
				is = getAssets().open(name);
			}
			if (is == null) {
				System.err.println("Can't find it in the APK");
				is = getAssets().open(name);
			}
			return is;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public int[] getImageData(String s, boolean flag) {
        Bitmap bitmap;
		int i;
		int j;
		int ai[];
        if (flag)
        {
            AssetManager assetmanager = getAssets();
            java.io.InputStream inputstream;
            try
            {
                inputstream = assetmanager.open(s);
            }
            catch (IOException ioexception)
            {
                System.err.println((new StringBuilder()).append("getImageData: Could not open image ").append(s).toString());
                return null;
            }
            bitmap = BitmapFactory.decodeStream(inputstream);
        } else
        {
            bitmap = BitmapFactory.decodeFile(s);
            if (bitmap == null)
            {
                System.err.println((new StringBuilder()).append("getImageData: Could not open image ").append(s).toString());
                return null;
            }
        }
        i = bitmap.getWidth();
        j = bitmap.getHeight();
        ai = new int[2 + i * j];
        ai[0] = i;
        ai[1] = j;
        bitmap.getPixels(ai, 2, i, 0, 0, i, j);
        return ai;
    }

	public String[] getOptionStrings() {
		Log.e("AtomicLauncher", "OptionStrings");
		return new String[] {};
	}

	public float getPixelsPerMillimeter() {
		float val = ((float) metrics.densityDpi) / 25.4f;
		System.out.println("Pixels per mm: " + val);
		return val;

	}

	public String getPlatformStringVar(int a) {
		System.out.println("getPlatformStringVar: " + a);
		return "";
	}

	public int getScreenHeight() {
		return metrics.heightPixels;
	}

	public int getScreenWidth() {
		return metrics.widthPixels;
	}

	public int getUserInputStatus() {
		Log.e("AtomicLauncher", "User input status");
		return 0;
	}

	public String[] getUserInputString() {
		Log.e("AtomicLauncher", "User input string");
		return new String[] {};
	}

	public boolean hasBuyButtonWhenInvalidLicense() {
		return false;
	}

	/** Seems to be called whenever displayDialog is called. Not on UI thread. */
	public void initiateUserInput(int a) {
		System.out.println("initiateUserInput: " + a);
	}

	public boolean isNetworkEnabled(boolean a) {
		System.out.println("Network?:" + a);
		return true;
	}

	public boolean isTouchscreen() {
		return true;
	}

	public void postScreenshotToFacebook(String name, int firstInt,
			int secondInt, int[] thatArray) {
	}

	public void quit() {
		finish();
	}

	public void setIsPowerVR(boolean powerVR) {
		System.out.println("PowerVR: " + powerVR);
	}

	public void tick() {
	}

	public void vibrate(int duration) {
		((Vibrator) this.getSystemService(Context.VIBRATOR_SERVICE))
				.vibrate(duration);
	}

	public boolean supportsNonTouchscreen() {
		boolean xperia = false;
		boolean play = false;
		String[] data = new String[3];
		data[0] = Build.MODEL.toLowerCase(Locale.ENGLISH);
		data[1] = Build.DEVICE.toLowerCase(Locale.ENGLISH);
		data[2] = Build.PRODUCT.toLowerCase(Locale.ENGLISH);
		for (String s : data) {
			if (s.indexOf("xperia") >= 0)
				xperia = true;
			if (s.indexOf("play") >= 0)
				play = true;
		}
		return xperia && play;
	}

	public int getKeyFromKeyCode(int keyCode, int metaState, int deviceId) {
		KeyCharacterMap characterMap = KeyCharacterMap.load(deviceId);
		return characterMap.get(keyCode, metaState);
	}

	public static void saveScreenshot(String name, int firstInt, int secondInt,
			int[] thatArray) {
	}

	public void showKeyboard(final String mystr, final int maxLength,
			final boolean mybool) {
		this.runOnUiThread(new Runnable() {
			public void run() {
				showHiddenTextbox(mystr, maxLength, mybool);
			}
		});
	}

	public void hideKeyboard() {
		this.runOnUiThread(new Runnable() {
			public void run() {
				dismissHiddenTextbox();
			}
		});
	}

	public void updateTextboxText(final String text) {
		if (hiddenTextView == null)
			return;
		hiddenTextView.post(new Runnable() {
			public void run() {
				hiddenTextView.setText(text);
			}
		});
	}

	PopupWindow hiddenTextWindow;
	EditText hiddenTextView;
	Boolean hiddenTextDismissAfterOneLine = false;

	private class PopupTextWatcher implements TextWatcher,
			TextView.OnEditorActionListener {
		public void afterTextChanged(Editable e) {
			nativeSetTextboxText(e.toString());

		}

		public void beforeTextChanged(CharSequence c, int start, int count,
				int after) {
		}

		public void onTextChanged(CharSequence c, int start, int count,
				int after) {
		}

		public boolean onEditorAction(TextView v, int actionId, KeyEvent event) {
			if (hiddenTextDismissAfterOneLine) {
				hiddenTextWindow.dismiss();
			} else {
				nativeReturnKeyPressed();
			}
			return true;
		}
	}

	public void showHiddenTextbox(String text, int maxLength,
			boolean dismissAfterOneLine) {
		int IME_FLAG_NO_FULLSCREEN = 0x02000000;
		if (hiddenTextWindow == null) {
			hiddenTextView = new EditText(this);
			PopupTextWatcher whoWatchesTheWatcher = new PopupTextWatcher();
			hiddenTextView.addTextChangedListener(whoWatchesTheWatcher);
			hiddenTextView.setOnEditorActionListener(whoWatchesTheWatcher);
			hiddenTextView.setSingleLine(true);
			hiddenTextView.setImeOptions(EditorInfo.IME_ACTION_NEXT
					| EditorInfo.IME_FLAG_NO_EXTRACT_UI
					| IME_FLAG_NO_FULLSCREEN);
			hiddenTextView.setInputType(InputType.TYPE_CLASS_TEXT);
			LinearLayout linearLayout = new LinearLayout(this);
			linearLayout.addView(hiddenTextView);
			hiddenTextWindow = new PopupWindow(linearLayout);
			hiddenTextWindow.setWindowLayoutMode(
					ViewGroup.LayoutParams.WRAP_CONTENT,
					ViewGroup.LayoutParams.WRAP_CONTENT);
			hiddenTextWindow.setFocusable(true);
			hiddenTextWindow
					.setInputMethodMode(PopupWindow.INPUT_METHOD_NEEDED);
			hiddenTextWindow.setBackgroundDrawable(new ColorDrawable());
			// To get back button handling for free
			hiddenTextWindow.setClippingEnabled(false);
			hiddenTextWindow.setTouchable(false);
			hiddenTextWindow.setOutsideTouchable(true);
			// These flags were taken from a dumpsys window output of Mojang's
			// window
			hiddenTextWindow
					.setOnDismissListener(new PopupWindow.OnDismissListener() {
						public void onDismiss() {
							nativeBackPressed();
						}
					});
		}

		hiddenTextView.setText(text);
		Selection.setSelection((Spannable) hiddenTextView.getText(),
				text.length());
		this.hiddenTextDismissAfterOneLine = dismissAfterOneLine;

		hiddenTextWindow.showAtLocation(this.getWindow().getDecorView(),
				Gravity.LEFT | Gravity.TOP, -10000, 0);
		hiddenTextView.requestFocus();
		showKeyboardView();
	}

	public void dismissHiddenTextbox() {
		if (hiddenTextWindow == null)
			return;
		hiddenTextWindow.dismiss();
		hideKeyboardView();
	}

	public void showKeyboardView() {
		Log.i("AtomicLauncher", "Show keyboard view");
		InputMethodManager imm = (InputMethodManager) getSystemService(Context.INPUT_METHOD_SERVICE);
		imm.showSoftInput(getWindow().getDecorView(),
				InputMethodManager.SHOW_FORCED);
	}

	protected void hideKeyboardView() {
		InputMethodManager imm = (InputMethodManager) getSystemService(Context.INPUT_METHOD_SERVICE);
		imm.hideSoftInputFromWindow(this.getWindow().getDecorView()
				.getWindowToken(), 0);
	}

	public int abortWebRequest(int requestId) {
		Log.i("AtomicLauncher", "Abort web request: " + requestId);
		return 0;
	}

	public String getRefreshToken() {
		Log.i("AtomicLauncher", "Get Refresh token");
		return "";
	}

	public String getSession() {
		Log.i("AtomicLauncher", "Get Session");
		return "";
	}

	public String getWebRequestContent(int requestId) {
		Log.e("AtomicLauncher", "Get web request content: " + requestId);
		return "";
	}

	public int getWebRequestStatus(int requestId) {
		Log.e("AtomicLauncher", "Get web request status: " + requestId);
		return 0;
	}

	public void openLoginWindow() {
		Log.e("AtomicLauncher", "Open login window");
	}

	public void setRefreshToken(String token) {
	}

	public void setSession(String session) {
	}

	public void webRequest(int requestId, long timestamp, String url,
			String method, String cookies) {
		Log.e("AtomicLauncher", "webRequest");
	}

	// signature change in 0.7.3
	public void webRequest(int requestId, long timestamp, String url,
			String method, String cookies, String extraParam) {
		Log.e("AtomicLauncher", "webRequest");
	}

	public String getAccessToken() {
		Log.i("AtomicLauncher", "Get access token");
		return "";
	}

	public String getClientId() {
		Log.i("AtomicLauncher", "Get client ID");
		return "";
	}

	public String getProfileId() {
		Log.i("AtomicLauncher", "Get profile ID");
		return "";
	}

	public String getProfileName() {
		Log.i("AtomicLauncher", "Get profile name");
		return "";
	}

	public void statsTrackEvent(String firstEvent, String secondEvent) {
		Log.i("AtomicLauncher", "Stats track: " + firstEvent + ":" + secondEvent);
	}

	public void statsUpdateUserData(String firstEvent, String secondEvent) {
		Log.i("AtomicLauncher", "Stats update user data: " + firstEvent + ":"
				+ secondEvent);
	}

	public boolean isDemo() {
		Log.i("AtomicLauncher", "Is demo");
		return false;
	}

	public void setLoginInformation(String accessToken, String clientId,
			String profileUuid, String profileName) {
		Log.i("AtomicLauncher", "setLoginInformation");
	}

	public void clearLoginInformation() {
		Log.i("AtomicLauncher", "Clear login info");
	}

  	public String[] getBroadcastAddresses()
    {
        ArrayList arraylist = new ArrayList();
        try
        {
            System.setProperty("java.net.preferIPv4Stack", "true");
            for (Enumeration enumeration = NetworkInterface.getNetworkInterfaces(); enumeration.hasMoreElements();)
            {
                NetworkInterface networkinterface = (NetworkInterface)enumeration.nextElement();
                if (!networkinterface.isLoopback())
                {
                    Iterator iterator = networkinterface.getInterfaceAddresses().iterator();
                    while (iterator.hasNext()) 
                    {
                        InterfaceAddress interfaceaddress = (InterfaceAddress)iterator.next();
                        if (interfaceaddress.getBroadcast() != null)
                        {
                            arraylist.add(interfaceaddress.getBroadcast().toString().substring(1));
                        }
                    }
                }
            }

        }
        catch (Exception exception) { }
        return (String[])arraylist.toArray(new String[arraylist.size()]);
    }
  
  	public long getTotalMemory() {
    		ActivityManager localActivityManager = (ActivityManager)getSystemService("activity");
    		ActivityManager.MemoryInfo localMemoryInfo = new ActivityManager.MemoryInfo();
    		localActivityManager.getMemoryInfo(localMemoryInfo);
    		return localMemoryInfo.availMem;
  	}
  	
  	public String createUUID() {
  		return UUID.randomUUID().toString().replaceAll("-", "");
  	}
  	
  	public String getLocale() {
  		return HardwareInformation.getLocale();
  	}
  	
  	public boolean hasHardwareChanged() {
  		return false;
  	}
  	
  	public boolean isFirstSnooperStart() {
  		return true;
  	}
  	
  	public boolean isTablet() {
  		return (getResources().getConfiguration().screenLayout & 0xF) == 4;
  	}
  	
  	public static final Integer RESULT_PICK_IMAGE = 1;
  	
  	long callback = 0;
  	public void pickImage(long callback) {
  		this.callback = callback;
  		startActivityForResult(new Intent(Intent.ACTION_PICK, MediaStore.Images.Media.EXTERNAL_CONTENT_URI), RESULT_PICK_IMAGE);
  	}
  	
  	public String getExternalStoragePath() {
  		System.out.println("ext storage dir: "+Environment.getExternalStorageDirectory().getAbsolutePath());
  	    return Environment.getExternalStorageDirectory().getAbsolutePath();
  	}
  	
  	public String getDeviceModel() {
  		return "AtomicLauncher";//HardwareInformation.getDeviceModelName();
  	}
  	
  	public String getDeviceId() {
  		return "";
  	}
  	
  	public int getAndroidVersion() {
  		return Build.VERSION.SDK_INT;
  	}
  	
  	public void onDialogCompleted() {
  		
  	}
  	
  	public void onDialogCanceled() {
  		
  	}
  	
  	public void createAlertDialog(boolean hasOk, boolean hasCancel, boolean modal) {
  		System.out.println("createAlertDialog: hasOk: "+hasOk+"; hasCancel: "+hasCancel+"; modal:"+modal);
  	}
  	
}
