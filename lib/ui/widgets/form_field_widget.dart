import 'package:flutter/material.dart';
import 'package:peduli_diri/utility/constans.dart';

class CustomeFormField extends StatelessWidget {
  final String hintText;
  final IconData iconData;
  final TextInputType textInputType;
  final bool isSecure;
  final TextEditingController controller;
  CustomeFormField({required this.controller, required this.iconData, required this.isSecure, required this.textInputType, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return _FormField();
  }

  Widget _FormField () {
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 15),
      margin: EdgeInsets.only(top: 20),
      child: TextFormField(
        controller: controller,
        keyboardType: textInputType,
        obscureText: isSecure,
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