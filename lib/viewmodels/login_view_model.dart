import 'package:flutter/material.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:peduli_diri/utility/constans.dart';


alertDiaglogLoginSucces(BuildContext context, String msg) {
  CoolAlert.show(
    context: context, 
    type: CoolAlertType.success,
    title: msg,
    backgroundColor: kLightColor,
   confirmBtnColor: kPrimaryColor,
    onConfirmBtnTap: (){
      Navigator.of(context).pushNamedAndRemoveUntil(
        DasboardRoute, (route) => false);
    }
  );
}