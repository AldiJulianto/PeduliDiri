import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:peduli_diri/utility/constans.dart';
import 'package:peduli_diri/utility/route_name.dart';



CostumeAlertDialog(BuildContext context, CoolAlertType coolAlertType, String title, String text, String confirmButtonText ) {
  CoolAlert.show(
    context: context,
    type: coolAlertType,
    title: title,
    text: text,
    backgroundColor: kLightColor,
    confirmBtnColor: kPrimaryColor,
    confirmBtnText: confirmButtonText,
    barrierDismissible: false,
  );
}


CostumeAlertLogin(BuildContext context){
  CoolAlert.show(
    context: context, 
    type: CoolAlertType.success,
    title: 'Sukses',
    text: 'Login Berhasil',
    barrierDismissible: false,
    backgroundColor: kLightColor,
    confirmBtnColor: kPrimaryColor,
    confirmBtnText: 'Tutup',
    onConfirmBtnTap: (){
      Navigator.pushNamedAndRemoveUntil(context, DasboardRoute, (route) => false);
    },
  );
}

CostumeAlertRegister(BuildContext context) {
  CoolAlert.show(
    context: context, 
    type: CoolAlertType.success,
    title: 'Sukses',
    text: 'Registrasi Berhasil, Lanjut ke halaman Login?',
    barrierDismissible: false,
    backgroundColor: kLightColor,
    confirmBtnColor: kPrimaryColor,
    confirmBtnText: 'Ya',
    showCancelBtn: true,
    cancelBtnText: 'Tidak',
    onCancelBtnTap: (){
      Navigator.of(context).pop();
    },
    onConfirmBtnTap: (){
      Navigator.pushReplacementNamed(context, loginRoute);
    },
  );
}