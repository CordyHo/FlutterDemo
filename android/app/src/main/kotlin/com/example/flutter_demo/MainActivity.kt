package com.example.flutter_demo

import android.widget.Toast
import io.flutter.embedding.android.FlutterActivity

class MainActivity : FlutterActivity() {

    var lastClick = 0L

    override fun onBackPressed() {
        val currentClick = System.currentTimeMillis()
        if (currentClick - lastClick > 1500) {
            Toast.makeText(this, "再按一次退出App", Toast.LENGTH_LONG).show()
        } else {
            super.onBackPressed()
        }
        lastClick = currentClick
    }
}
