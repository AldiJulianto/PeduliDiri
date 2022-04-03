import 'package:flutter/material.dart';
import 'package:peduli_diri/ui/shared/share_style.dart';
import 'package:peduli_diri/ui/widgets/CostumeText.dart';
import 'package:peduli_diri/utility/constans.dart';

class FieldJenis extends StatefulWidget {

  @override
  State<FieldJenis> createState() => FieldJenisState();
}

class FieldJenisState extends State<FieldJenis> {
  final items = [
    'Bekerja',
    'Belanja',
    'Beribadah',
    'Kuliah',
    'Liburan',
    'Sekolah',
    'Lainnya.'
  ];

  String? value;

  @override
  Widget build(BuildContext context) {
    IconThemeData(color: kPrimaryColor);
    return Container(
      padding: EdgeInsets.all(8),
      height: 45,
      margin: EdgeInsets.symmetric(vertical: 10),
      width: 300,
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.all(Radius.circular(5),),
        border: Border.all(color: kBlackPrimaryColor)
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          hint: CostumeText(text: 'Pilih kegiatan', textStyle: LrHintTextStyle),
          iconEnabledColor: kPrimaryColor,
          isExpanded: true,
          value: value,
          items: items.map(buildMenuItem).toList(),
          onChanged: (value) => setState(() {
            this.value = value;
          }),
        ),
      ),
    );
  }

  DropdownMenuItem<String>buildMenuItem(String item) => DropdownMenuItem(
    value: item,
    child: CostumeText(
      text: item, 
      textStyle: LrHintTextStyle,
    ),
  );
}