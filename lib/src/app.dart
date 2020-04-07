import 'package:flutter/material.dart';
import 'package:flutterdevtest/src/screens/screens.dart';
import 'package:flutterdevtest/src/utils/utils.dart';

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.appName,
      theme: Constants.appTheme,
      home: HomeScreen(),
    );
  }
}
