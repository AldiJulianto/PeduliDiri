import 'package:flutter/material.dart';
import 'package:peduli_diri/ui/shared/share_style.dart';
import 'package:peduli_diri/ui/widgets/CostumeText.dart';

class SplashText extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return CostumeText(
      text: 'Peduli Diri',
      textStyle: SpTitleTexstyle,
    );
  }
}