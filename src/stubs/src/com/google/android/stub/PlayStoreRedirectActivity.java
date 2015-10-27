package com.google.android.stub;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.net.Uri;

public class PlayStoreRedirectActivity extends Activity {

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        StringBuilder sb;
        try {
            Intent playStore = new Intent(Intent.ACTION_VIEW);
            playStore.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            sb = new StringBuilder();
            sb.append("market://details?id=");
            sb.append(getPackageName());
            playStore.setData(Uri.parse(sb.toString()));
            startActivity(playStore);
        } catch (ActivityNotFoundException ex) {
            Intent browserPlayStore = new Intent(Intent.ACTION_VIEW);
            browserPlayStore.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            sb = new StringBuilder();
            sb.append("https://play.google.com/store/apps/details?id=");
            sb.append(getPackageName());
            browserPlayStore.setData(Uri.parse(sb.toString()));
            startActivity(browserPlayStore);
        }
        finish();
    }
}
