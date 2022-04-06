import 'package:flutter/material.dart';
import 'package:peduli_diri/models/perjalanan_model.dart';
import 'package:peduli_diri/services/database_handler.dart';
import 'package:peduli_diri/ui/form_data_screens/widget/DataHeader.dart';
import 'package:peduli_diri/ui/form_data_screens/widget/Search.dart';
import 'package:peduli_diri/ui/form_data_screens/widget/SearchSort.dart';
import 'package:peduli_diri/ui/shared/share_style.dart';
import 'package:peduli_diri/ui/widgets/CostumeText.dart';
import 'package:peduli_diri/ui/widgets/button_back_widget.dart';
import 'package:peduli_diri/utility/constans.dart';
import 'package:peduli_diri/utility/route_name.dart';

class FormDataView extends StatefulWidget {
  const FormDataView({Key? key}) : super(key: key);

  @override
  State<FormDataView> createState() => _FormDataViewState();
}

class _FormDataViewState extends State<FormDataView> {
  TextEditingController _cari = TextEditingController();
  var dbHelper;
  int count = 0;

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
            child: ListView(children: [
      Container(
        margin: const EdgeInsets.fromLTRB(15, 15, 15, 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ButtonBackAppBar(
              Icons.arrow_back_ios_new_rounded,
              kPrimaryColor,
              backFunction: () {
                Navigator.pushNamed(context, DasboardRoute);
              },
            ),
            SearchSort(
              controller: _cari,
            ),
            DataHeader(),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              height: MediaQuery.of(context).size.height * 0.7,
              child: FutureBuilder<List>(
                future: dbHelper.getPerjalanan(),
                initialData: [],
                builder: (context, snapshot) {
                  return snapshot.hasData
                      ? new ListView.builder(
                          shrinkWrap: true,
                          padding: EdgeInsets.all(9),
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context, i) {
                            return _buildRow(snapshot.data![i]);
                          },
                        )
                      : Center(
                          child: CircularProgressIndicator(),
                        );
                },
              ),
            ),
          ],
        ),
      ),
    ])));
  }

  Widget _buildRow(PerjalananModel perjalananModel) {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 5, 5, 0),
      child: Card(
        elevation: 3,
        color: kSecondColor,
        child: ListTile(
          onTap: (){},
          leading: Icon(Icons.location_on_rounded, color: kWhiteColor, size: 35,),
          title: new Text(perjalananModel.lokasi!, maxLines: 3, overflow: TextOverflow.ellipsis,),
          subtitle: Text("${perjalananModel.suhu} °C" ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(perjalananModel.tanggal!,),
              Text(perjalananModel.jam!),
            ],
          )
          
           
        ),
      ),
    );
  }
}
