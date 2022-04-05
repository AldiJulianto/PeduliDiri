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
import 'package:shared_preferences/shared_preferences.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({ Key? key }) : super(key: key);

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  //CONTROLER
  Future<SharedPreferences>_pref = SharedPreferences.getInstance();

  final _formKey = new GlobalKey<FormState>();
  final _conLogNik = TextEditingController();
  final _conLogNama = TextEditingController();


  var dbHelper;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dbHelper = DbHelper();
  }

  void fungtionLogin(BuildContext context) async{
    String nik = _conLogNik.text;
    String nama = _conLogNama.text;

    if (nik.isEmpty || nama.isEmpty) {
      if (nik.isEmpty) {
        CostumeAlertDialog(
          context, 
          CoolAlertType.warning, 
          'Warning', 
          'Silahkan isi NIK Anda', 
          'Tutup'
        );
      } else if(nama.isEmpty){
        CostumeAlertDialog(
          context, 
          CoolAlertType.warning, 
          'Warning', 
          'Silahkan isi Nama Anda', 
          'Tutup'
        );
      }
    } else if(nik.length != 16 || nama.length < 2){
      if (nik.length != 16) {
        CostumeAlertDialog(
          context, 
          CoolAlertType.error, 
          'Error', 
          'NIK tidak valid', 
          'Tutup'
        );
      } else if(nama.length < 2){
        CostumeAlertDialog(
          context, 
          CoolAlertType.error, 
          'Error', 
          'Nama tidak valid', 
          'Tutup'
        );
      }
    } else {
      await dbHelper.getLoginUser(nik, nama).then((userData){
        if (userData != null) {
          setSp(userData).whenComplete((){
            CostumeAlertLogin(context);
          });

          
        }
      }).catchError((error){
        CostumeAlertDialog(
          context, 
          CoolAlertType.error, 
          error, 
          'Periksa NIK dan Nama Anda', 
          'Tutup'
        );
      }); 
    }
  }

  Future setSp (UserModel user) async {
    final SharedPreferences sp = await _pref;

    sp.setString('nik', user.nik!);
    sp.setString('nama', user.nama!);
  }


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          //FIELD NIK
          CostumeField(
            textEditingController: _conLogNik, 
            textInputType: const TextInputType.numberWithOptions(
              decimal: false,
              signed: false
            ), 
            inputFormater: [
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(16)
            ],
            prefixIcon: Icons.credit_card_rounded, 
            hintText: 'NIK (16 digit NIK Anda)'
          ),

          //FIELD NAMA
          CostumeField(
            textEditingController: _conLogNama, 
            textInputType: TextInputType.name,
            inputFormater: [
              FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z]+|\s")),
              LengthLimitingTextInputFormatter(50),
              UpperCaseTextFormatter()
            ],
            prefixIcon: Icons.person_outline_rounded,
            hintText: 'Nama Lengkap'
            
          ),

          SizedBox(
            height: 120,
          ),

          //Button Login
          CostumeButton(
            text: 'Masuk', 
            textStyle: LrBtWhiteTextStyle, 
            colorButton: kPrimaryColor, 
            functionBt: (){
              fungtionLogin(context);
            }
          )


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