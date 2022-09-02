// ignore_for_file: prefer_const_constructors

// import 'dart:html';

import 'package:flash_chat/main.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
// import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
        duration: 2500,
        splash: 'images/logo.png',
        nextScreen: FlashChat(),
        splashTransition: SplashTransition.fadeTransition,
        // pageTransitionType: PageTransition(type: PageTransitionType.fade, child: Column(),),
        pageTransitionType: PageTransitionType.scale,
        backgroundColor: Colors.white,
      ),
    );
  }
}
