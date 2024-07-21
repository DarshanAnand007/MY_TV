package com.example.my_tv;

import android.accessibilityservice.AccessibilityService;
import android.content.pm.PackageManager;
import android.util.Log;
import android.view.accessibility.AccessibilityEvent;

public class MyAccessibilityService extends AccessibilityService {

    private static final String TAG = "MyAccessibilityService";

    @Override
    public void onAccessibilityEvent(AccessibilityEvent event) {
        if (event.getEventType() == AccessibilityEvent.TYPE_VIEW_CLICKED) {
            CharSequence packageName = event.getPackageName();
            String appName = getAppNameFromPackageName(packageName.toString());
            Log.d(TAG, "User clicked on: " + appName);
        }
    }

    @Override
    public void onInterrupt() {
    }

    private String getAppNameFromPackageName(String packageName) {
        PackageManager packageManager = getPackageManager();
        try {
            return packageManager.getApplicationLabel(packageManager.getApplicationInfo(packageName, 0)).toString();
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return packageName;
        }
    }
}
