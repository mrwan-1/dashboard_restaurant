import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import '../../auth/account.dart';
import '../../confige.dart';
import '../../home/home.dart';


class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 3,
      navigateAfterSeconds: new Account(),
      title: new Text('مرحبا بكم في تطبيق اداره المطعم',
      style: new TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20.0
      ),),
      backgroundColor: BasicColor,      image: new Image.asset('assets/images/images1.png'),

      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      onClick: ()=>print("resurant"),
      loaderColor: Colors.white);
  }
}