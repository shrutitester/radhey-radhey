import 'dart:async';

import 'package:flutter/material.dart';
import 'package:radhey_knit_llp/screens/splashScreen.dart';
import 'screens/branches.dart';
import 'screens/homePage.dart';
import 'screens/loginPage.dart';

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
      title: 'Anapurna Sales',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFFF4A52)),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashScreen(),
    );
  }
}
