import 'package:flutter/material.dart';

import 'package:theft_detection_app/homepage.dart';
import 'package:theft_detection_app/startingpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "theftdetectionapp",
        debugShowCheckedModeBanner: false,
        home: startpage());
  }
}
