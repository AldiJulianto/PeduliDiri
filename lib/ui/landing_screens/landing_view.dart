import 'package:flutter/material.dart';
import 'package:peduli_diri/ui/landing_screens/widget/LandingContain.dart';
import 'package:peduli_diri/ui/landing_screens/widget/LandingHeader.dart';

class LandingView extends StatelessWidget {
  const LandingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [

              const SizedBox(
                height: 95,
              ),

              //LANDING HEADER
              LandingHeader(),

              const SizedBox(
                height: 110,
              ),

              //LANDING CONTAINER
              LandingContain(),
            ],
          ),
        ),
      ),
    );
  }
}
