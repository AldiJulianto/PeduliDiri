import 'package:flutter/material.dart';
import 'package:peduli_diri/ui/widgets/costume_button_logReg.dart';
import 'package:peduli_diri/ui/widgets/form_field_widget.dart';
import 'package:peduli_diri/ui/widgets/button_back_widget.dart';
import 'package:peduli_diri/ui/widgets/title_description_widget.dart';
import 'package:peduli_diri/utility/constans.dart';

class LoginView extends StatelessWidget {
  final _conNik = TextEditingController();
  final _conNama = TextEditingController();

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

                  CostumeTitleDescription("Welcome back", 
                      "Saya senang bisa melihat Anda kembali untuk mencatat perjalanan anda.",
                      emoticon,),

                  SizedBox(
                    height: 35,
                  ),

                  //Text Form Field
                  Column(
                    children: [
                      //Form NIK
                      CustomeFormField(
                          iconData: Icons.credit_card_rounded,
                          isSecure: false,
                          controller: _conNik,
                          textInputType: TextInputType.number,
                          hintText: "NIK"),
                      //Form Password
                      CustomeFormField(
                          controller: _conNama,
                          iconData: Icons.person_outline_rounded,
                          isSecure: false,
                          textInputType: TextInputType.name,
                          hintText: "Nama Lengkap"),
                    ],
                  ),

                  SizedBox(
                    height: 120,
                  ),

                  //Button Login
                  CostumeButtonLogReg("Masuk", kPrimaryColor, kWhiteColor,
                      Size(MediaQuery.of(context).size.width * 0.7, 45.0),
                      buttonFunction: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        DasboardRoute, (route) => false);
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
  // Widget _titleDescription() {
  //   return Container(
  //     margin: EdgeInsets.only(left: 10),
  //     child: Column(
  //       children: [
  //         Row(
  //           children:[

  //             Text(
  //             "Welcome back ",
  //             style: TextStyle(
  //               fontFamily: fontPopppins,
  //               fontSize: 32,
  //               fontWeight: FontWeight.w700,
  //               color: kPrimaryColor
  //               ),
  //             ),
  //             Image.asset(emoticon,width: 38,)
  //           ]
  //         ),

  //         Container(
  //           padding: EdgeInsets.only(right: 30),
  //           margin: EdgeInsets.only(left: 10),
  //           child: TeksWidgets(
  //            data: "I am so happy to see You can continue to login for manage your journey.",
  //            fontColor: kBlackColor,
  //            fontSize: 12,
  //            fontFamily: fontPopppins,
  //            fontWeight: FontWeight.w200,
  //           ),
  //         )
  //       ],
  //     ),
  //   );
  // }

  // Widget _textFormField () {
  //   return Column(
  //     children: [
  //       Container(
  //         height: 60,
  //         padding: EdgeInsets.symmetric(horizontal: 20.0),
  //         margin: EdgeInsets.only(top: 10),
  //         child: TextFormField(
  //           decoration: InputDecoration(
  //             enabledBorder: OutlineInputBorder(
  //             borderRadius: BorderRadius.all(Radius.circular(15.0)),
  //             borderSide: BorderSide(
  //               color: Colors.transparent
  //             )
  //           ),
  //         focusedBorder: OutlineInputBorder(
  //           borderRadius: BorderRadius.all(Radius.circular(30.0)),
  //           borderSide: BorderSide(
  //             color: kPrimaryColor
  //           )
  //         ),
  //           prefixIcon: Icon(Icons.person_outline_outlined, color: kPrimaryColor,),
  //           hintText: 'User Name',
  //           fillColor: kLightColor,
  //           filled: true
  //           ),
  //         ),
  //       ),
  //       Container(
  //         height: 60,
  //         padding: EdgeInsets.symmetric(horizontal: 20.0),
  //         margin: EdgeInsets.only(top: 15),
  //         child: TextFormField(
  //           obscureText: true,
  //           decoration: InputDecoration(
  //             enabledBorder: OutlineInputBorder(
  //             borderRadius: BorderRadius.all(Radius.circular(15.0)),
  //             borderSide: BorderSide(
  //               color: Colors.transparent
  //             )
  //           ),
  //         focusedBorder: OutlineInputBorder(
  //           borderRadius: BorderRadius.all(Radius.circular(30.0)),
  //           borderSide: BorderSide(
  //             color: kPrimaryColor
  //           )
  //         ),
  //           prefixIcon: Icon(Icons.lock_outlined, color: kPrimaryColor,),
  //           hintText: 'Password',
  //           fillColor: kLightColor,
  //           filled: true
  //           ),
  //         ),
  //       ),

  //     ],
  //   );
  // }

  // Widget _buttonLogin (context) {
  //   return Container(
  //     alignment: Alignment.center,
  //     child: ElevatedButton(
  //       style: ElevatedButton.styleFrom(
  //         minimumSize: Size(MediaQuery.of(context).size.width * 0.7, 45.0),
  //         primary: kPrimaryColor
  //       ),
  //       child: Text("Masuk", style: TextStyle(fontFamily: fontPopppins, fontSize: 14, fontWeight: FontWeight.w600),),
  //       onPressed: (){},
  //     ),
  //   );
  // }

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
              Navigator.of(context).pushNamedAndRemoveUntil(RegisterRoute, (route) => false);
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