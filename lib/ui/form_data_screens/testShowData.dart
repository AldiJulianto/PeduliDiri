import 'package:flutter/material.dart';
import 'package:peduli_diri/models/perjalanan_model.dart';
import 'package:peduli_diri/services/database_handler.dart';
import 'package:peduli_diri/ui/widgets/button_back_widget.dart';
import 'package:peduli_diri/utility/constans.dart';

class TestShowData extends StatefulWidget {
  const TestShowData({ Key? key }) : super(key: key);

  @override
  State<TestShowData> createState() => _TestShowDataState();
}

class _TestShowDataState extends State<TestShowData> {

  var dbHelper = DbHelper().getPerjalanan();
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
          Column(
            children: [
              
              FutureBuilder<List>(
              future: dbHelper,
              initialData: [],
              builder: (context, snapshot) {
                return snapshot.hasData?
                new ListView.builder(
                  padding: EdgeInsets.all(9),
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, i) {
                    return _buildRow(snapshot.data![i]);
                  },
                ): Center(child: CircularProgressIndicator(),);
              },
            ),
            ]
          ),
          ]
        ),
      )
    );
  }

  Widget _buildRow (PerjalananModel perjalananModel) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Card(
        child: ListTile(
          title: new Text(perjalananModel.lokasi!),
          subtitle: Text(perjalananModel.tanggal!),
          trailing: Text(perjalananModel.jam!),
        ),
      ),
    );
  }
}