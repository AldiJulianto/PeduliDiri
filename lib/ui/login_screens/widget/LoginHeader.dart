import 'package:flutter/material.dart';
import 'package:peduli_diri/ui/login_screens/widget/Emoticon.dart';
import 'package:peduli_diri/ui/widgets/CostumeTitle.dart';

class LoginHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return CostumeTitleLogin(
      textTitle: "Welcome back",
      textDescription: "Saya senang bisa melihat Anda kembali untuk mencatat perjalanan anda.",
      child: Emoticon(),
    );
  }
}