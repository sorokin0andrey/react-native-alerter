
package com.sorokin0andrey;

import android.graphics.Color;
import com.tapadoo.alerter.Alerter;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableMap;

public class RNAlerterModule extends ReactContextBaseJavaModule {

  private final ReactApplicationContext reactContext;

  public RNAlerterModule(ReactApplicationContext reactContext) {
    super(reactContext);
    this.reactContext = reactContext;
  }

  @Override
  public String getName() {
    return "RNAlerter";
  }

  @ReactMethod
  public void show(final ReadableMap props) {
    String title = props.getString("title");
    String message = props.getString("message");
    String backgroundColorValue = props.getString("backgroundColor");
    int duration = props.getInt("duration");

    int backgroundColor = 0;

    if (backgroundColorValue.length() > 0) {
      backgroundColor = Color.parseColor(backgroundColorValue);
    }

    Alerter alerter = Alerter.create(getCurrentActivity());
    if (title.length() > 0) {
      alerter.setTitle(title);
    }
    if (message.length() > 0) {
      alerter.setText(message);
    }
    alerter.hideIcon();
    if (backgroundColor != 0) {
      alerter.setBackgroundColorInt(backgroundColor);
    }
    if (duration != 0) {
      alerter.setDuration(duration);
    }
    alerter.show();
  }
}