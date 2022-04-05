import 'package:flutter/material.dart';
import 'package:peduli_diri/ui/dasboard_screens/widget/CostumeAppBar.dart';
import 'package:peduli_diri/ui/dasboard_screens/widget/CostumeCardCarousel.dart';
import 'package:peduli_diri/ui/dasboard_screens/widget/CostumeContainer.dart';
import 'package:peduli_diri/ui/shared/share_style.dart';
import 'package:peduli_diri/ui/widgets/CostumeText.dart';
import 'package:peduli_diri/utility/constans.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DasboardView extends StatefulWidget {
  const DasboardView({Key? key}) : super(key: key);

  @override
  State<DasboardView> createState() => _DasboardViewState();
}

class _DasboardViewState extends State<DasboardView> {
  Future<SharedPreferences> _pref = SharedPreferences.getInstance();
  String nik = '';
  String nama = '';


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserdata();
  }

  Future<void> getUserdata() async{
    final SharedPreferences sp = await _pref;
    setState(() {
      nik = sp.getString('nik')!;
      nama = sp.getString('nama')!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: CostumeAppBar,
      drawer: CostumeDrawerBar,
      body: SafeArea(
        child: ListView(
          children: [ 
           Column( 
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //CARD CAROUSEL
              CostumeCardCarosel(),
              //JARAK
              SizedBox(height: 5,),
              //CONTAIN
              ContainerPerjalanan(),
              // CostumeText(
              // text: 'Nik anda $nik', 
              // textStyle: DsTitleCtTextStyle
              // ),
              // CostumeText(text: 'Nama Anda $nama', textStyle: DsTitleCtTextStyle)
            ],
          ),
          ]
        ),
      ),
    );
  }
}
