import 'package:flutter/material.dart';
import 'package:peduli_diri/ui/shared/share_style.dart';
import 'package:peduli_diri/utility/constans.dart';
import 'package:intl/intl.dart';

class FieldJam extends StatefulWidget {
  final TextEditingController controller;
  const FieldJam ({
    Key? key,
    required this.controller
  });

  @override
  State<FieldJam> createState() => _FieldJamState();
}

class _FieldJamState extends State<FieldJam> {

  TextEditingController timeinput =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      margin: EdgeInsets.symmetric(vertical: 10),
      width: 115,
      
      child: TextField(
        controller: widget.controller,
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
          suffixIcon: Icon(Icons.access_time_filled_rounded, color: kPrimaryColor,),
          hintText: 'Jam',
          hintStyle: LrHintTextStyle,
        ),
        onTap: ()async {
          TimeOfDay? newTime = await showTimePicker(
            confirmText: 'OK',
            cancelText: 'Batal',
            context: context,
            initialTime: TimeOfDay.now()
          );

          if(newTime != null ){
                      print(newTime);  //pickedDate output format => 2021-03-10 00:00:00.000
                      String formatTime = newTime.format(context);
                      setState(() {
                         widget.controller.text = formatTime; //set output date to TextField value. 
                      });
                  }else{
                      print("Date is not selected");
                  }
        },
      ),
    );
  }
}