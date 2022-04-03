import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:peduli_diri/ui/shared/share_style.dart';
import 'package:peduli_diri/utility/constans.dart';

class CostumeField extends StatelessWidget {

  final String hintText;
  final IconData prefixIcon;
  final List<TextInputFormatter> inputFormater;
  final TextInputType textInputType;
  final TextEditingController textEditingController;

  CostumeField({
    required this.textEditingController,
    required this.textInputType,
    required this.inputFormater,
    required this.prefixIcon,
    required this.hintText,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.only(top: 20, bottom: 10),

      child: TextFormField(
        controller: textEditingController,
        keyboardType: textInputType,
        inputFormatters: inputFormater,
          onSaved: (val) => textEditingController.text = val!,

        //Decoration
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(7)),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          focusedBorder: const  OutlineInputBorder(
            borderRadius:  BorderRadius.all(Radius.circular(20.0)),
            borderSide: BorderSide(color: kPrimaryColor)
          ),
          prefixIcon: Icon(
                prefixIcon,
                color: kPrimaryColor,
          ),
          hintText: hintText,
          hintStyle: LrHintTextStyle,
          filled: true,
          fillColor: kLightColor
        ),
      ),
    );
  }
}