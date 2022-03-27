import 'dart:async';

import 'package:flutter/material.dart';
import 'package:peduli_diri/ui/widgets/teks_widget.dart';
import 'package:peduli_diri/utility/constans.dart';

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
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(iconPeduli)
                  )
              ),
            ),

            SizedBox(
              height: 30,
            ),
            TeksWidgets(
              data: "Peduli Diri",
              fontSize: 30,
              fontColor: kWhiteColor,
              fontFamily: fontPopppins,
              fontWeight: FontWeight.w700,
              
            ),
            SizedBox(
              height: 80,
            )
          ],
        ),
      ),
    );
  }
}