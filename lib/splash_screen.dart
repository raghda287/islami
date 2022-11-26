import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_app/home_screen.dart';

class SplashScreen extends StatefulWidget {
static const String routeName='splash';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {

    super.initState();
    Timer(const Duration(seconds: 4),()=>Navigator.pushNamed(context, HomeScreen.routeName));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      child: Image.asset('assets/images/splash_screen.png',fit: BoxFit.fill,),
      ),
    );
  }
}
