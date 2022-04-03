import 'package:flutter/material.dart';
import 'package:peduli_diri/ui/form_add_screens/widget/FormContainer.dart';
import 'package:peduli_diri/ui/form_add_screens/widget/FormHeader.dart';
import 'package:peduli_diri/ui/widgets/button_back_widget.dart';
import 'package:peduli_diri/utility/constans.dart';

class FormAddView extends StatefulWidget {

  @override
  State<FormAddView> createState() => _FormAddViewState();
}

class _FormAddViewState extends State<FormAddView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(15, 15, 15, 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ButtonBackAppBar(
                    Icons.arrow_back_ios_new_rounded,
                    kPrimaryColor,
                    backFunction: (){
                      Navigator.pop(context);
                    },
                  ),

                  //Title
                  FormHeader(),

                  //Container
                  FormContainer()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}