import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:peduli_diri/utility/constans.dart';

class LandingHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SvgPicture.asset(
        gambarLanding,
        width: 300,
      ),
    );
  }
}