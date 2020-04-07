import 'dart:core';
import 'package:flutter/material.dart';

class Constants {
  static String appName = "Github Fetch";

  //Colors for theme
  static Color lightPrimary = Color(0xfffcfcff);
  static Color lightAccent = Colors.orange;
  static Color lightBG = Color(0xfffcfcff);
  static Color darkBG = Colors.black;
  static Color badgeColor = Colors.red;

  static ThemeData appTheme = ThemeData(
    backgroundColor: lightBG,
    primaryColor: lightPrimary,
    accentColor:  lightAccent,
    cursorColor: lightAccent,
    scaffoldBackgroundColor: lightBG,
    appBarTheme: AppBarTheme(
      elevation: 0,
      textTheme: TextTheme(
        title: TextStyle(
          color: darkBG,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
  );


  static const int TIME_OUT_SECONDS = 30;
  static const String TIME_OUT_MSG = 'The request timed out';
  static const String SOCKET_EXCEPTION_MSG = 'No Internet connection';
  static const int TIME_OUT_PROFILE_SECONDS = 90;

  static const String BASE_URL = "https://api.github.com";
  static const String SEARCH_URL = "https://api.github.com/search";

  // Error Message
  static const String REPO_RETRIEVAL_ERROR_MSG = "Unable to retrieve repo at the moment";
}