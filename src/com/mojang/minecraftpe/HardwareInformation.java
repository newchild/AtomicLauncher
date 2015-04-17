package com.mojang.minecraftpe;

import java.util.Locale;

import android.os.Build;

public class HardwareInformation {
	
	public static String getAndroidVersion() {
		return "Android 5.1";
	}

	public static String getDeviceModelName() {
		String str1 = Build.MANUFACTURER;
		String str2 = Build.MODEL;
		if (str2.startsWith(str1))
			return str2.toUpperCase();
		return str1.toUpperCase() + " " + str2;
	}
	
	public static String getCPUFeatures() {
		return "";
	}
	
	public static String getCPUName() {
		return "";
	}
	
	public static String getCPUType() {
		return Build.CPU_ABI;
	}
	
	public static int getNumCores() {
		return 512;
	}
	
	public static String getLocale() {
		return Locale.getDefault().toString();
	}
	
	public static CPUInfo getCPUInfo() {
		return new CPUInfo();
	}
	
	public static class CPUInfo {
		//
	}

}
