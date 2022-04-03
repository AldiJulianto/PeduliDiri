import 'package:flutter/material.dart';
import 'package:peduli_diri/ui/login_screens/widget/FormLogin.dart';
import 'package:peduli_diri/ui/login_screens/widget/LoginFooter.dart';
import 'package:peduli_diri/ui/login_screens/widget/LoginHeader.dart';
import 'package:peduli_diri/ui/widgets/button_back_widget.dart';
import 'package:peduli_diri/utility/constans.dart';

class LoginView extends StatefulWidget {
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
                    height: 15,
                  ),

                  //Title and description

                  LoginHeader(),

                  SizedBox(
                    height: 20,
                  ),

                  //Text Form Field
                  FormLogin(),

                  

                  SizedBox(
                    height: 170,
                  ),

                  //textSignUp
                  LoginFooter()
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
