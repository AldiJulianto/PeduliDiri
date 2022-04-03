import 'package:flutter/material.dart';
import 'package:peduli_diri/ui/shared/share_style.dart';
import 'package:peduli_diri/utility/constans.dart';
import 'package:intl/intl.dart';

class FieldTanggal extends StatefulWidget {

  @override
  State<FieldTanggal> createState() => _FieldTanggalState();
}

class _FieldTanggalState extends State<FieldTanggal> {

  TextEditingController dateinput =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      margin: EdgeInsets.symmetric(vertical: 10),
      width: 170,
      
      child: TextField(
        controller: dateinput,
        readOnly: true,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderRadius: const  BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(
              color: kBlackPrimaryColor
            )
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius:   BorderRadius.all(Radius.circular(6)),
            borderSide: BorderSide(
              width: 1.8,
              color: kPrimaryColor
            ),
          ),
          suffixIcon: Icon(Icons.calendar_today_rounded, color: kPrimaryColor,),
          hintText: 'Tanggal',
          hintStyle: LrHintTextStyle,
        ),
        onTap: ()async {
          DateTime? pickedDate = await showDatePicker(
            confirmText: 'OK',
            cancelText: 'Batal',
            context: context,
             initialDate: DateTime.now(),
              firstDate: DateTime(2000),
               lastDate: DateTime(2101),
          );

          if(pickedDate != null ){
                      print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                      String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate); 
                      print(formattedDate); //formatted date output using intl package =>  2021-03-16
                        //you can implement different kind of Date Format here according to your requirement

                      setState(() {
                         dateinput.text = formattedDate; //set output date to TextField value. 
                      });
                  }else{
                      print("Date is not selected");
                  }
        },
      ),
    );
  }
}