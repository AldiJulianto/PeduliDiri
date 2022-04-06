import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:peduli_diri/models/user_model.dart';
import 'package:peduli_diri/services/database_handler.dart';
import 'package:peduli_diri/ui/shared/share_style.dart';
import 'package:peduli_diri/ui/widgets/CostumeAlertDialog.dart';
import 'package:peduli_diri/ui/widgets/CostumeButon.dart';
import 'package:peduli_diri/ui/widgets/CostumeField.dart';
import 'package:peduli_diri/utility/constans.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  //CONTROLLER DAN VALIDATION
  final _formKey = new GlobalKey<FormState>();
  final _conRegNik = TextEditingController();
  final _conRegNama = TextEditingController();

  var dbHelper;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dbHelper = DbHelper();
    dbHelper.getUser();
  }

  void SignUpFungtion(BuildContext context) async {
    String nik = _conRegNik.text;
    String nama = _conRegNama.text;

    if (nik.isEmpty || nama.isEmpty) {
      if (nik.isEmpty) {
        CostumeAlertDialog(context, CoolAlertType.warning, 'Warning',
            'Silahkan isi NIK Anda', 'Tutup');
      } else if (nama.isEmpty) {
        CostumeAlertDialog(context, CoolAlertType.warning, 'Warning',
            'Silahkan isi Nama Anda', 'Tutup');
      }
    } else if (nik.length != 16 || nama.length < 2) {
      if (nik.length != 16) {
        CostumeAlertDialog(
            context, CoolAlertType.error, 'Error', 'NIK tidak valid', 'Tutup');
      } else if (nama.length < 2) {
        CostumeAlertDialog(
            context, CoolAlertType.error, 'Error', 'Nama tidak valid', 'Tutup');
      } 
      }else {
        _formKey.currentState!.save();
        UserModel uModel = UserModel(nik, nama);
        dbHelper.saveData(uModel).then((userData) {
          CostumeAlertRegister(context);
        }).catchError((error) {
          CostumeAlertDialog(context, CoolAlertType.error, error,
              'NIK yang Anda masukkan sudah terdaftar', 'Tutup');
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          //FIELD NIK
          CostumeField(
              textEditingController: _conRegNik,
              textInputType: const TextInputType.numberWithOptions(
                  decimal: false, signed: false),
              inputFormater: [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(16)
              ],
              prefixIcon: Icons.credit_card_rounded,
              hintText: 'NIK (16 digit NIK Anda)'),

          //FIELD NAMA
          CostumeField(
              textEditingController: _conRegNama,
              textInputType: TextInputType.name,
              inputFormater: [
                FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z]+|\s")),
                LengthLimitingTextInputFormatter(50),
                UpperCaseTextFormatter()
              ],
              prefixIcon: Icons.person_outline_rounded,
              hintText: 'Nama Lengkap'),

          SizedBox(
            height: 120,
          ),

          //Button Login
          CostumeButton(
              text: 'Daftar',
              textStyle: LrBtWhiteTextStyle,
              colorButton: kPrimaryColor,
              functionBt: () {
                SignUpFungtion(context);
              })
        ],
      ),
    );
  }
}

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}
