import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:peduli_diri/ui/shared/share_style.dart';
import 'package:peduli_diri/utility/constans.dart';

class TestJenis extends StatefulWidget {
  const TestJenis({Key? key}) : super(key: key);

  @override
  State<TestJenis> createState() => _TestJenisState();
}

class _TestJenisState extends State<TestJenis> {
  // final items = [
  //   'Bekerja',
  //   'Belanja',
  //   'Beribadah',
  //   'Kuliah',
  //   'Liburan',
  //   'Sekolah',
  //   'Lainnya.'
  // ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: DropdownSearch<String>(
        
        mode: Mode.MENU,
        showSelectedItems: true,
        items: [
          'Bekerja',
          'Belanja',
          'Beribadah',
          'Kuliah',
          'Liburan',
          'Sekolah',
          'Lainnya.'
        ],
        onChanged: print,
        dropdownSearchDecoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
          enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              borderSide: BorderSide(color: kBlackPrimaryColor)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(6)),
            borderSide: BorderSide(width: 1.8, color: kPrimaryColor),
          ),
          hintText: 'Pilih Kegiatan',
          hintStyle: LrHintTextStyle,
        ),
      ),
    );
  }
}
