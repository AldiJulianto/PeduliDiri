import 'package:flutter/material.dart';
import 'package:peduli_diri/utility/constans.dart';

class SplashHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(iconPeduli),
          fit: BoxFit.fill
        )
      ),
    );
  }
}