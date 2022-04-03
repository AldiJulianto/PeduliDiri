import 'dart:async';
import 'package:flutter/material.dart';
import 'package:peduli_diri/ui/splashScreens/widget/SplashHeader.dart';
import 'package:peduli_diri/ui/splashScreens/widget/SplashText.dart';
import 'package:peduli_diri/utility/constans.dart';
import 'package:peduli_diri/utility/route_name.dart';

class SplashScreens extends StatefulWidget {
  const SplashScreens({ Key? key }) : super(key: key);

  @override
  State<SplashScreens> createState() => _SplashScreensState();
}

class _SplashScreensState extends State<SplashScreens> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), ()=> Navigator.pushReplacementNamed(context, landingRoute));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            //SPLASH HEADER
            SplashHeader(),

            const SizedBox(
              height: 30,
            ),

            //SPLASH TEXT
            SplashText(),

            const SizedBox(
              height: 80,
            )
          ],
        ),
      ),
    );
  }
}