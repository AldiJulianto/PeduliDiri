import 'package:flutter/material.dart';
import 'package:peduli_diri/ui/shared/share_style.dart';
import 'package:peduli_diri/utility/constans.dart';

class CostumeSort extends StatefulWidget {
  const CostumeSort({ Key? key }) : super(key: key);

  @override
  State<CostumeSort> createState() => _CostumeSortState();
}

class _CostumeSortState extends State<CostumeSort> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      margin: EdgeInsets.symmetric(vertical: 10),
      width: 110,
      child: TextField(
        readOnly: true,
        decoration: InputDecoration(

          filled: true,
          fillColor: kPrimaryColor,
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          enabledBorder: const OutlineInputBorder(
            borderRadius:  BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(
              color: Colors.transparent
            )
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius:  BorderRadius.all(Radius.circular(6)),
            borderSide: BorderSide(
              width: 1.8,
              color: kPrimaryColor
            ),
          ),
          suffixIcon: const Icon(Icons.sort_rounded, color: kWhiteColor, ),
          hintText: 'Urut',
          hintStyle: TextStyle(
            fontFamily: fontPopppins,
            fontSize: 13,
            color: kWhiteColor
          )
          
      ),
      ),
    );
  }
}