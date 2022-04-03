import 'package:flutter/material.dart';
import 'package:peduli_diri/ui/shared/share_style.dart';
import 'package:peduli_diri/ui/widgets/CostumeText.dart';

class FormHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 20, 15, 5),
      child: CostumeText(
        text: 'Menambahkan data perjalanan',
        textStyle: FmTitleTextStyle
      ),
    );
  }
}