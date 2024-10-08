import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quize_app/screen/quize/view/quize_screen.dart';
import 'package:quize_app/utils/app_routes.dart';

void main()
{
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: app_routes,
      // home: const QuizeScreen(),
      // initialRoute: "/quize",
    )
  );
}