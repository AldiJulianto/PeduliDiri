import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:peduli_diri/ui/route/route.dart';
import 'package:peduli_diri/ui/splashScreens/splashScreens.dart';
import 'package:peduli_diri/utility/constans.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      )
    );
    return MaterialApp(
      onGenerateRoute: RouterGenerator.generateRoute,

      debugShowCheckedModeBanner: false,
      title: 'Peduli Diri',
      theme: ThemeData(
        fontFamily: fontPopppins,
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreens(),
    );
  }
}