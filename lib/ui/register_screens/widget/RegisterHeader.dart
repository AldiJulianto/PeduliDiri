import 'package:flutter/material.dart';
import 'package:peduli_diri/ui/widgets/CostumeTitle.dart';

class RegisterHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  CostumeTitleRegister(
      textTitle: "Buat akun baru",
      textDescription: "Buat akun agar Anda bisa mencatat perjalanan anda dengan peduli diri.",
    );
  }
}