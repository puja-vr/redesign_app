import 'dart:async';
import 'package:flutter/material.dart';
import 'package:steps_challenge/screens/login.dart';
import 'package:steps_challenge/tabs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '500K Steps Challenge',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      routes: {
        Login.routeName: (context) => Login(),
        Tabs.routeName: (context) => Tabs(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
        () => Navigator.pushReplacementNamed(context, Login.routeName));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(height: 10),
            Image.asset(
              'assets/logo.png',
              height: 100,
            ),
            SizedBox(height: 50),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/man.png',
                  fit: BoxFit.contain,
                  height: 175,
                ),
                SizedBox(height: 10),
                Text(
                  "Face of the event",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Column(
              children: [
                Text(
                  "Conceived and Promoted by",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 1),
                Image.asset(
                  'assets/promotion.png',
                  height: 30,
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
