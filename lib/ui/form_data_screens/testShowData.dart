import 'package:flutter/material.dart';
import 'package:peduli_diri/services/database_handler.dart';

class TestShowData extends StatefulWidget {
  const TestShowData({ Key? key }) : super(key: key);

  @override
  State<TestShowData> createState() => _TestShowDataState();
}

class _TestShowDataState extends State<TestShowData> {


  var dbHelper = DbHelper();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: FutureBuilder(
        future: dbHelper.getPerjalanan(),
        builder: ((BuildContext c))
      )),
    );
  }
}