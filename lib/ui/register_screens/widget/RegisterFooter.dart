import 'package:flutter/material.dart';
import 'package:peduli_diri/ui/shared/share_style.dart';
import 'package:peduli_diri/ui/widgets/CostumeText.dart';
import 'package:peduli_diri/utility/route_name.dart';


class RegisterFooter extends StatelessWidget {
  const RegisterFooter({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CostumeText(
            text: "Anda sudah punya akun?", 
            textStyle: LrFtBlkTextStyle
          ),
          TextButton(
            onPressed: (){Navigator.pushNamed(context, loginRoute);}, 
            child: CostumeText(
              text: 'Masuk disini', 
              textStyle: LrFtBlueTextStyle
            )
          )
        ],
      ),
    );
  }
}