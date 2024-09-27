import 'package:flutter/material.dart';
import 'package:internet_detector/internet_detector.dart';
import 'package:quize_app/screen/quize/view/quize_screen.dart';
import 'package:quize_app/utils/app_routes.dart';

void main()
{
  runApp(
    InternetDetectorAppGetX(
      debugShowCheckedModeBanner: false,
      routes: app_routes,
      // home: const QuizeScreen(),
      // initialRoute: "/quize",
    )
  );
}