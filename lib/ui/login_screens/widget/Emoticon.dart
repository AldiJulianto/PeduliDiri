import 'package:flutter/material.dart';
import 'package:peduli_diri/utility/constans.dart';

class Emoticon extends StatelessWidget {
  const Emoticon({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      emoticon, width: 32,
    );
  }
}