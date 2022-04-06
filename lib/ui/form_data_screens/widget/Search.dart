import 'package:flutter/material.dart';
import 'package:peduli_diri/ui/shared/share_style.dart';
import 'package:peduli_diri/utility/constans.dart';

class CostumeSearch extends StatefulWidget {

  final TextEditingController controller;
  const CostumeSearch({
    Key? key,
    required this.controller
  });

  @override
  State<CostumeSearch> createState() => _CostumeSearchState();
}

class _CostumeSearchState extends State<CostumeSearch> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      margin: EdgeInsets.symmetric(vertical: 10),
      width: 180,

      child:  TextField(
        controller: widget.controller,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          enabledBorder: const OutlineInputBorder(
            borderRadius:  BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(
              color: kBlackPrimaryColor
            )
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius:  BorderRadius.all(Radius.circular(6)),
            borderSide: BorderSide(
              width: 1.8,
              color: kPrimaryColor
            ),
          ),
          prefixIcon: const Icon(Icons.search_rounded, color: kPrimaryColor,),
          hintText: 'Cari data perjalanan',
          hintStyle: LrHintTextStyle
      ),
      )
    );
  }
}