import 'package:flutter/material.dart';
import 'package:peduli_diri/ui/shared/share_style.dart';
import 'package:peduli_diri/utility/constans.dart';

class FieldCatatan extends StatelessWidget {
  final TextEditingController controller;

  FieldCatatan ({
    required this.controller
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      
      child: TextField(
        minLines: 1,
        maxLines: 4,
        keyboardType: TextInputType.text,
        controller: controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          isDense: true,
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
          hintText: 'Tuliskan catatan anda (Opsional)',
          hintStyle: LrHintTextStyle
        ),
      ),
    );
  }
}