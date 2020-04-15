package com.example.android_platform

import android.app.Application
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.FlutterEngineCache
import io.flutter.embedding.engine.dart.DartExecutor

const val FLUTTER_ENGINE_TAG = "FLUTTER_ENGINE"

class App: Application() {
    override fun onCreate() {
        super.onCreate()

        // Create and pre-warm a FlutterEngine.
        val flutterEngine =  FlutterEngine(this)
        flutterEngine.dartExecutor
            .executeDartEntrypoint(DartExecutor.DartEntrypoint.createDefault())

        // Cache the pre-warmed FlutterEngine in the FlutterEngineCache.
        FlutterEngineCache.getInstance().put(FLUTTER_ENGINE_TAG, flutterEngine)
    }
}