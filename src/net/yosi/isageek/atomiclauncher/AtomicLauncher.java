package net.yosi.isageek.atomiclauncher;

import android.app.Application;

public class AtomicLauncher extends Application {
	@Override
	public void onCreate() {
		Utils.setContext(getApplicationContext());
		super.onCreate();
	}
}
