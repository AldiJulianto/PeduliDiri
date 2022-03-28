import 'package:flutter/material.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:peduli_diri/utility/constans.dart';





alertDialogWarning(BuildContext context, String msg){
  CoolAlert.show(
  context: context,
   type: CoolAlertType.warning,
   title: msg,
   backgroundColor: kLightColor,
   confirmBtnColor: kPrimaryColor
  );
}

alertDiaglogSucces(BuildContext context, String msg) {
  CoolAlert.show(
    context: context, 
    type: CoolAlertType.success,
    title: msg,
    backgroundColor: kLightColor,
   confirmBtnColor: kPrimaryColor,
    onConfirmBtnTap: (){
      Navigator.of(context).pushNamedAndRemoveUntil(
        loginRoute, (route) => false);
    }
  );
}