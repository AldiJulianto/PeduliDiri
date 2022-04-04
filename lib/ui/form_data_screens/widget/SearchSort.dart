import 'package:flutter/material.dart';
import 'package:peduli_diri/ui/form_data_screens/widget/Search.dart';
import 'package:peduli_diri/ui/form_data_screens/widget/Sort.dart';

class SearchSort extends StatefulWidget {
  const SearchSort({ Key? key }) : super(key: key);

  @override
  State<SearchSort> createState() => _SearchSortState();
}

class _SearchSortState extends State<SearchSort> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(18, 10, 18, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          CostumeSearch(),
          CostumeSort()
        ],
      ),
    );
  }
}