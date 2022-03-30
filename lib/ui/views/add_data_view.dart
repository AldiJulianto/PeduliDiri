import 'package:flutter/material.dart';
import 'package:peduli_diri/ui/widgets/button_back_widget.dart';
import 'package:peduli_diri/ui/widgets/teks_widget.dart';
import 'package:peduli_diri/utility/constans.dart';


class AddFormVIew extends StatefulWidget {
  const AddFormVIew({ Key? key }) : super(key: key);

  @override
  State<AddFormVIew> createState() => _AddFormVIewState();
}

class _AddFormVIewState extends State<AddFormVIew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(25, 20, 25, 20),

              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ButtonBackAppBar(Icons.arrow_back_ios_new_rounded, kPrimaryColor,
                    backFunction: (){
                      Navigator.pop(context);
                    },
                    ),

                    Container(
                      padding: EdgeInsets.all(15),
                      child: TeksWidgets(
                        data: "Menambahkan data Perjalanan",
                        fontColor: Colors.black,
                        fontFamily: fontPopppins,
                        fontSize: 16.5,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    Form(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TeksWidgets(
                              data: "Tempat yang dikunjungi",
                              fontColor: Colors.black,
                              fontFamily: fontPopppins,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                            Container(
                              height: 45,
                              width: 300,
                              color: Colors.amber,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}