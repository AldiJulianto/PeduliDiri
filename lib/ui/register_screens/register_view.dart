import 'package:flutter/material.dart';
import 'package:peduli_diri/ui/register_screens/widget/RegisterFooter.dart';
import 'package:peduli_diri/ui/register_screens/widget/RegisterForm.dart';
import 'package:peduli_diri/ui/register_screens/widget/RegisterHeader.dart';
import 'package:peduli_diri/utility/constans.dart';
import 'package:peduli_diri/ui/widgets/button_back_widget.dart';

class RegisterView extends StatefulWidget {
  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
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
                      height: 15,
                    ),

                    //Title dan Description
                    RegisterHeader(),


                    SizedBox(
                      height: 20,
                    ),

                    //Text Form Field
                     RegisterForm(),

                    SizedBox(
                      height: 170,
                    ),

                    //Text SignUp
                    RegisterFooter()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}