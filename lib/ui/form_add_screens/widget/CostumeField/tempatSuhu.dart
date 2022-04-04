import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:peduli_diri/ui/shared/share_style.dart';
import 'package:peduli_diri/utility/constans.dart';

class FieldTmptSuhu extends StatelessWidget {
  final String hintText;
  final String? suffixText;
  final IconData suffixIcon;
  final TextInputType textInputType;
  final TextEditingController textEditingController;
  final List<TextInputFormatter>? inputFormater;

  FieldTmptSuhu({
    required this.hintText,
    required this.suffixIcon,
    required this.textInputType,
    required this.textEditingController,
    this.inputFormater,
    this.suffixText
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      margin: EdgeInsets.symmetric(vertical: 10),
      
      child: TextField(
        keyboardType: textInputType,
        controller: textEditingController,
        inputFormatters: inputFormater,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderRadius: const  BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(
              color: kBlackPrimaryColor
            )
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const  BorderRadius.all(Radius.circular(6)),
            borderSide: BorderSide(
              width: 1.8,
              color: kPrimaryColor
            ),
          ),
          suffixIcon: Icon(suffixIcon, color: kPrimaryColor,),
          hintText: hintText,
          suffixText: suffixText,
          hintStyle: LrHintTextStyle
        ),
      ),
    );
  }
}