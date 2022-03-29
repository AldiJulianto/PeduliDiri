import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:peduli_diri/utility/constans.dart';
import 'package:peduli_diri/viewmodels/register_view_model.dart';

class CustomeFormField extends StatelessWidget {
  final String hintText;
  final IconData iconData;
  final int maximalLength;
  final TextInputType textInputType;
  final bool isSecure;
  final TextEditingController controller;
  CustomeFormField({required this.controller, required this.iconData, required this.maximalLength, required this.isSecure, required this.textInputType, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return _FormField(context);
  }

  Widget _FormField (BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 15),
      margin: EdgeInsets.only(top: 20),
      child: TextFormField(
        controller: controller,
        keyboardType: textInputType,
        obscureText: isSecure,
        inputFormatters: [
          LengthLimitingTextInputFormatter(maximalLength)
        ],
        validator:  (value) {
          if (value == null || value.isEmpty ){
            return 'Silahkan isi $hintText';
          }
          return null;
        },
        onSaved: (val) => controller.text = val!,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(7.0)),
            borderSide: BorderSide(
              color: Colors.transparent
            )
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            borderSide: BorderSide(
              color: kPrimaryColor
            )
          ),
          prefixIcon: Icon(iconData, color: kPrimaryColor,),
          hintText: hintText,
          hintStyle: TextStyle(fontFamily: fontPopppins,
          fontWeight: FontWeight.w400,
          fontSize: 13, color: Colors.black54,
          ),
          fillColor: kLightColor,
          filled: true
        )
      ),
    );
  }
}