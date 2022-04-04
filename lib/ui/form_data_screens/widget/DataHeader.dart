import 'package:flutter/material.dart';
import 'package:peduli_diri/ui/shared/share_style.dart';
import 'package:peduli_diri/ui/widgets/CostumeText.dart';

class DataHeader extends StatelessWidget {
  const DataHeader({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15,10, 15, 5),
      child: CostumeText(
        text: 'Data Perjalanan Anda',
        textStyle: FmTitleTextStyle
      ),
    );
  }
}