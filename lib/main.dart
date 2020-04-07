import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterdevtest/src/app.dart';

void main(){
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {
    runApp(App());
  });
}

