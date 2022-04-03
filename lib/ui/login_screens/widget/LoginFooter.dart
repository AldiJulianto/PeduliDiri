import 'package:flutter/material.dart';
import 'package:peduli_diri/ui/shared/share_style.dart';
import 'package:peduli_diri/ui/widgets/CostumeText.dart';
import 'package:peduli_diri/utility/route_name.dart';

class LoginFooter extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CostumeText(
            text: "Anda belum punya akun?", 
            textStyle: LrFtBlkTextStyle
          ),
          TextButton(
            onPressed: (){Navigator.pushNamed(context, RegisterRoute);}, 
            child: CostumeText(
              text: 'Daftar disini', 
              textStyle: LrFtBlueTextStyle
            )
          )
        ],
      ),
    );
  }
}