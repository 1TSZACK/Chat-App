// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unused_import

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flash_chat/screens/splash_screen.dart';
import 'package:flash_chat/try.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';
import 'package:page_transition/page_transition.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // runApp(SplashScreen());
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black54),
        ),
      ),
      home: AnimatedSplashScreen(
        pageTransitionType: PageTransitionType.fade,
        backgroundColor: Colors.grey.shade200,
        splash: ListTile(
          title: Icon(
            Icons.bolt_sharp,
            color: Colors.amberAccent[400],
            size: 130.0,
          ),
          subtitle: Center(
            child: Text(
              'FLASH CHAT',
              style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0),
            ),
          ),
        ),
        // splash: Image(
        //   image: AssetImage('images/logo.png'),
        //   // height: 10000.0,
        //   // width: 10000.0,
        // ),
        duration: 1500,
        splashTransition: SplashTransition.scaleTransition,
        nextScreen: WelcomeScreen(),
      ),
      // initialRoute: WelcomeScreen.id,
      routes: {
        LoginScreen.id: (context) => LoginScreen(),
        ChatScreen.id: (context) => ChatScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
      },
    );
  }
}
