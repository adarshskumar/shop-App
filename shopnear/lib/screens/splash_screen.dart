import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:shopnear/screens/loading_screen.dart';
import 'package:shopnear/screens/onboard.dart';
import 'package:shopnear/user_screen/home_page/bottom_bar.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    if (FirebaseAuth.instance.currentUser != null) {
      Get.off(BottomBarScreen());
    } else {
      Get.off(OnBoard());
    }
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        Get.off(OnBoard());
      } else {
        Get.off(BottomBarScreen());
      }
    });
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: LoadingScreen(),
    );
  }
}
