package com.autobots;

import android.content.Intent;

import org.apache.cordova.CallbackContext;
import org.apache.cordova.CordovaPlugin;

import org.json.JSONArray;
import org.json.JSONException;

public class SmsView extends CordovaPlugin {
    public boolean execute(String action, final JSONArray args, final CallbackContext callbackContext) throws JSONException {
        if (action.equals("open")) {
            Intent intent = new Intent(Intent.ACTION_VIEW);
            intent.setType("vnd.android-dir/mms-sms");
            intent.putExtra("address", args.getJSONArray(0).join(";"));
            intent.putExtra("sms_body", args.getString(1));
            cordova.getActivity().startActivity(intent);
        }
        return true;
    }
}