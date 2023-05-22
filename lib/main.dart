import 'package:deneme_/Screens/splash.dart';
import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
Future<String> loadAsset() async {
  return await rootBundle.loadString('assets/config.json');
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BlipNow',
      theme: ThemeData(
        primaryColor: Colors.grey[200],
      ),
      home: SplashPage(),
    );
  }
}
