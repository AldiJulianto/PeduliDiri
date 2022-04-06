import 'package:flutter/material.dart';
import 'package:peduli_diri/models/perjalanan_model.dart';
import 'package:peduli_diri/services/database_handler.dart';

class FullList extends StatefulWidget {
  @override
  _FullListState createState() => _FullListState();
}

class _FullListState extends State<FullList> {
  String userSearchInput = "";
  TextEditingController _searchInputController = TextEditingController();

  var  dbHelper;
  List<PerjalananModel> list = [];
  List<PerjalananModel> filteredList = <PerjalananModel>[];
  bool doItJustOnce = false;

  void _filterList(value) {
    setState(() {
      filteredList = list
          .where((text) => text.lokasi!.toLowerCase().contains(value!.toLowerCase()))
          .toList(); // I don't understand your Word list.
    });
  }

  @override
  void initState() {
    
    dbHelper = DbHelper();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        primary: true,
        title: InkWell(
          child: TextField(
            autofocus: false,
            enableInteractiveSelection: false,
            controller: _searchInputController,
            onChanged: (value) {
              _filterList(value);
            },
            decoration: InputDecoration(hintText: "Search"),
          ),
        ),
      ),
      body: Container(
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 10),
              height: MediaQuery.of(context).size.height * 0.5,
            child: FutureBuilder<List<PerjalananModel>>(

                future: dbHelper.getPerjalanan(),
                builder: (BuildContext context, AsyncSnapshot<List<PerjalananModel>> snapshot) {
                  if (snapshot.hasData) {
                    if (!doItJustOnce) {
                      //You should define a bool like (bool doItJustOnce = false;) on your state.
                      list = snapshot.data!;
                      filteredList = list;
                      doItJustOnce = !doItJustOnce; //this line helps to do just once.
                    }
                    return Container(
                      height: 200,
                      child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: filteredList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            /*take action*/
                          },
                          // child: staggeredList(
                          //   position: index,
                          //   duration: const Duration(milliseconds: 300),
                          //   child: SlideAnimation(
                          //     verticalOffset: 50.0,
                          //     child: FadeInAnimation(
                          //       child: listChild(filteredList[index].eng, filteredList[index].ger),
                          //     ),
                          //   ),
                          // ),
                        );
                      },
                    ),
                    );
                    
                  }
                  return Center(child: CircularProgressIndicator());
                }),
          ),
        ),
      ),
    );
  }
  }