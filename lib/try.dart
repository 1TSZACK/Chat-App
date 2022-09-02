// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

class Try extends StatelessWidget {
  const Try({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            child: Text(
              DateTime.now().millisecondsSinceEpoch.toString(),
              // DateTime.now().toString(),
              // DateTime.now().month.toString() +
              //     DateTime.now().day.toString() +
              //     ', ' +
              //     DateTime.now().year.toString() +
              //     DateTime.now().timeZoneName.toString(),
              // TimeOfDay.now().toString(),
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
