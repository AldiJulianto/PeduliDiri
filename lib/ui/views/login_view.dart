import 'package:flutter/material.dart';
import 'package:peduli_diri/services/database_handler.dart';
import 'package:peduli_diri/ui/widgets/costume_button_logReg.dart';
import 'package:peduli_diri/ui/widgets/form_field_widget.dart';
import 'package:peduli_diri/ui/widgets/button_back_widget.dart';
import 'package:peduli_diri/ui/widgets/title_description_widget.dart';
import 'package:peduli_diri/utility/constans.dart';
import 'package:peduli_diri/viewmodels/register_view_model.dart';

class LoginView extends StatefulWidget {
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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



    if (nik.isEmpty) {
      alertDialogWarning(context, "Silahakan Isi NIK Anda");
    }else if (nama.isEmpty) {
      alertDialogWarning(context, "Silahkan Isi Nama Anda");
    } else {
      await dbHelper.getLoginUser(nik, nama).then((userData){
        Navigator.pushNamedAndRemoveUntil(context, DasboardRoute, (route) => false);
      }); 
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20, 25, 20, 25),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //AppBar
                  ButtonBackAppBar(
                      Icons.arrow_back_ios_new_rounded, kPrimaryColor,
                      backFunction: () {
                    Navigator.of(context).pop();
                  }),

                  SizedBox(
                    height: 17,
                  ),

                  //Title and description

                  CostumeTitleDescription(
                    "Welcome back",
                    "Saya senang bisa melihat Anda kembali untuk mencatat perjalanan anda.",
                    emoticon,
                  ),

                  SizedBox(
                    height: 35,
                  ),

                  //Text Form Field
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        //Form NIK
                        CustomeFormField(
                            iconData: Icons.credit_card_rounded,
                            isSecure: false,
                            controller: _conLogNik,
                            textInputType: TextInputType.number,
                            hintText: "NIK"),
                        //Form Password
                        CustomeFormField(
                            controller: _conLogNama,
                            iconData: Icons.person_outline_rounded,
                            isSecure: false,
                            textInputType: TextInputType.name,
                            hintText: "Nama Lengkap"),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 120,
                  ),

                  //Button Login
                  CostumeButtonLogReg("Masuk", kPrimaryColor, kWhiteColor,
                      Size(MediaQuery.of(context).size.width * 0.7, 45.0),
                      buttonFunction: () {
                        fungtionLogin(context);
                  }),

                  SizedBox(
                    height: 170,
                  ),

                  //textSignUp
                  _textSignUp(context)
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }

  //Title and Description
  Widget _textSignUp(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Anda belum punya akun?",
          style: TextStyle(
              fontFamily: fontPopppins,
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: Colors.black87),
        ),
        TextButton(
            onPressed: () {
              Navigator.of(context)
                  .pushNamedAndRemoveUntil(RegisterRoute, (route) => false);
            },
            child: Text(
              "Daftar Disini",
              style: TextStyle(
                  fontFamily: fontPopppins,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: kPrimaryColor),
            ))
      ],
    );
  }
}
