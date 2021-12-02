package com.flutterstarter.flutter_starter;

// add for channel

import java.lang.Integer;
import java.lang.System;

import android.os.Bundle;
import androidx.annotation.NonNull;

import io.flutter.embedding.android.FlutterFragmentActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugins.GeneratedPluginRegistrant;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.util.Log;
import io.flutter.plugin.common.PluginRegistry.Registrar;
import java.net.URI;
import java.net.URISyntaxException;

public class MainActivity extends FlutterFragmentActivity {
    private static final String CHANNEL = "flutter.native/helper";

    @Override
    public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
        super.configureFlutterEngine(flutterEngine);
        new MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger(), CHANNEL)
                .setMethodCallHandler(
                        (call, result) -> {
                            switch( call.method ) {
                                case "testCall":
                                    result.success("flutter.native/helper: call success");
                                    break;

                                default:
                                    System.out.println("method call: notImplemented");
                                    result.notImplemented();
                            }
                        });
    }

    private String helloFromNativeCode() {
        return "Hello from Native Android Code";
    }
}
