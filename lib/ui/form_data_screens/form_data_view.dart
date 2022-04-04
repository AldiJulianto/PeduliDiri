import 'package:flutter/material.dart';
import 'package:peduli_diri/ui/form_data_screens/widget/DataHeader.dart';
import 'package:peduli_diri/ui/form_data_screens/widget/Search.dart';
import 'package:peduli_diri/ui/form_data_screens/widget/SearchSort.dart';
import 'package:peduli_diri/ui/widgets/button_back_widget.dart';
import 'package:peduli_diri/utility/constans.dart';


class FormDataView extends StatefulWidget {
  const FormDataView({ Key? key }) : super(key: key);

  @override
  State<FormDataView> createState() => _FormDataViewState();
}

class _FormDataViewState extends State<FormDataView> {
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
                     SearchSort(),
                    DataHeader(),
                    
                   
                  ],
               ),
            )
          ],
        )
      ),
    );
  }
}