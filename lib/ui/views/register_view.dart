import 'package:flutter/material.dart';
import 'package:peduli_diri/models/user_model.dart';
import 'package:peduli_diri/services/database_handler.dart';
import 'package:peduli_diri/ui/widgets/costume_button_logReg.dart';
import 'package:peduli_diri/ui/widgets/form_field_widget.dart';
import 'package:peduli_diri/ui/widgets/title_description_widget.dart';
import 'package:peduli_diri/utility/constans.dart';
import 'package:peduli_diri/ui/widgets/button_back_widget.dart';
import 'package:peduli_diri/viewmodels/register_view_model.dart';

class RegisterView extends StatefulWidget {
  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final _formKey = new GlobalKey<FormState>();


  final _conRegNik = TextEditingController();
  final _conRegNama = TextEditingController();
  var dbHelper;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dbHelper = DbHelper();
  }

  void fungtionSignUp (BuildContext context) {

    String nik = _conRegNik.text;
    String nama = _conRegNama.text;

    if (_formKey.currentState!.validate()) {
      if (nik.length != 16 ){
      alertDialogWarning(context, "NIK tidak valid");
    } 
    else if (nama.length <= 2) {
      alertDialogWarning(context, "Nama Tidak Valid");
    } 
    
    else {
      _formKey.currentState!.save();

      UserModel uModel = UserModel(nik, nama);

      dbHelper.saveData(uModel).then((userData){
        alertDiaglogSucces(context, "Sukes");
        Navigator.pushNamedAndRemoveUntil(context, loginRoute, (route) => false);
        
      }).catchError((error){
        print("error");
        
      });
      
    }
    }

    
  }

  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20, 25, 20, 25),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Appbar
                    ButtonBackAppBar(
                      Icons.arrow_back_ios_new_rounded, 
                      kPrimaryColor,
                      backFunction: (){Navigator.of(context).pop();},
                    ),

                    SizedBox(
                      height: 17,
                    ),

                    //Title dan Description
                    CostumeTitle2(
                      "Buat akun baru", 
                      "Buat akun agar Anda bisa mencatat perjalanan anda dengan peduli diri."
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
                            controller: _conRegNik,
                            iconData: Icons.credit_card_rounded,
                            isSecure: false,
                            textInputType: TextInputType.number,
                            hintText: "NIK"),
                        //Form Nama
                        CustomeFormField(
                          controller: _conRegNama,
                            iconData: Icons.person_outline_rounded,
                            isSecure: false,
                            textInputType: TextInputType.name,
                            hintText: "Nama Lengkap"),
                        //Form Password
                        
                                         ],
                                       ),
                     ),

                    SizedBox(
                      height: 120,
                    ),
                    
                    //Button Register

                    CostumeButtonLogReg(
                      "Daftar", 
                      kPrimaryColor, 
                      kWhiteColor,
                      Size(MediaQuery.of(context).size.width * 0.7, 45.0),
                      buttonFunction: (){
                        fungtionSignUp(context);
                      },
                    ),

                    SizedBox(
                      height: 170,
                    ),

                    //Text SignUp
                    _textSignUp(context)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _textSignUp(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Do you have an account?",
          style: TextStyle(
              fontFamily: fontPopppins,
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: Colors.black87),
        ),
        TextButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(loginRoute, (route) => false);
            },
            child: Text(
              "Login Here",
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