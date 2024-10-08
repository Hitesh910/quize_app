import 'package:flutter/material.dart';
import 'package:quize_app/screen/home/view/home_screen.dart';
import 'package:quize_app/screen/quize/view/quize_screen.dart';
import 'package:quize_app/screen/result/view/result_screen.dart';

Map<String, WidgetBuilder> app_routes = {
  "/": (context) => HomeScreen(),
  "/home": (context) => HomeScreen(),
  "/quize": (context) => QuizeScreen(),
  "/result": (context) => ResultScreen(),
};

