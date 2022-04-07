import 'package:flutter/material.dart';
import 'package:peduli_diri/models/perjalanan_model.dart';
import 'package:peduli_diri/services/database_handler.dart';
import 'package:peduli_diri/ui/form_data_screens/Perjalanan_list.dart';
import 'package:peduli_diri/ui/widgets/button_back_widget.dart';
import 'package:peduli_diri/utility/constans.dart';

class SearchData extends StatefulWidget {
  const SearchData({ Key? key }) : super(key: key);

  @override
  State<SearchData> createState() => _SearchDataState();
}

class _SearchDataState extends State<SearchData> {
  String? text;
  var dbHelper;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dbHelper = DbHelper();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              child: Column(
                children: [
                  ButtonBackAppBar(Icons.arrow_back_ios_new_rounded, kPrimaryColor),
                  Container(
                    margin: const EdgeInsets.all(15),
                    child: TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'keyword'
                      ),
                      onChanged: (value) {
                        text = value;
                        setState(() {
                          
                        });
                      },
                    ),
                  ),
                  // FutureBuilder(
                  //   future: dbHelper.getOneRow(text),
                  //   builder: (context, snapshot) {
                  //     if (snapshot.hasError) print('Error');
                  //     var data = snapshot.data;
                  //     return snapshot.hasData ? PerjalananList() : const Center(child: const Text('Kosong'),);
                  //   },
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}