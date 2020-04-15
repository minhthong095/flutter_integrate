package com.example.android_platform

import android.content.Intent
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Button
import androidx.fragment.app.Fragment
import io.flutter.embedding.android.FlutterActivity

class FragmentSingleScreenFlutter : Fragment() {

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        return inflater.inflate(R.layout.fragment_new_flutter_screen, container, false)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        val btnBlue = view.findViewById<Button>(R.id.btnBlue)
        val btnGreen = view.findViewById<Button>(R.id.btnGreen)
        val btnCached = view.findViewById<Button>(R.id.btnNewFlutterScreenCached)

        btnBlue.setOnClickListener {
            startActivity(FlutterActivity.withNewEngine().initialRoute("/blue").build(context!!))
        }

        btnGreen.setOnClickListener {
            startActivity(FlutterActivity.withNewEngine().initialRoute("/green").build(context!!))
        }

        btnCached.setOnClickListener {
            startActivity(FlutterActivity.withCachedEngine(FLUTTER_ENGINE_TAG).build(context!!))
        }
    }
}