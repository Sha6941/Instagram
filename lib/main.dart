import 'package:flutter/material.dart';
import 'package:instagram/Instagram/Home.dart';
import 'package:instagram/Instagram/gethelp.dart';
import 'package:instagram/Instagram/home1.dart';
import 'package:instagram/Instagram/login.dart';
import 'package:instagram/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  Splash(),
    );
  }
}
