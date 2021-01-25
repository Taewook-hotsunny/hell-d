import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helld/screens/login_page.dart';

void main() {
  runApp(HelldApp());
}

class HelldApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: LoginPage(),
    );
  }
}
