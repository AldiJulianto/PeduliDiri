import 'package:flutter/material.dart';
import 'package:peduli_diri/ui/dasboard_screens/widget/CostumeDrawer.dart';
import 'package:peduli_diri/ui/shared/share_style.dart';
import 'package:peduli_diri/ui/widgets/CostumeText.dart';
import 'package:peduli_diri/utility/constans.dart';



AppBar CostumeAppBar = AppBar(
  //DESAIN
  elevation: 0,
  backgroundColor: kWhiteColor,
  centerTitle: true,
  iconTheme: IconThemeData(color: kPrimaryColor, size: 28),

  //TITLE
  title: CostumeText(
    text: 'Peduli Diri', 
    textStyle: DsHeadTextStyle,
  ),

  //ICON PEDULI DIRI
  actions: [
     Container(
        width: 35,
        height: 35,
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(0, 3))
          ],
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(iconPeduli)
          )
        ),
      ),
  ],
);

//  late final String nik;
//  late final String nama;

 class buatSp {
 final  String nik;
 final  String nama;

const  buatSp(
  {
    required this.nik,
    required this.nama
  }
);
}



Drawer CostumeDrawerBar = Drawer(
  backgroundColor: kPrimaryColor,
  child: Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          kPrimaryColor, kSecondColor
        ]
      )
    ),
    child: ListView(
      children: [
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(color: Colors.transparent),
          accountName: CostumeText(
            text: 'NIK',
            textStyle: DrawerNikTextStyle
          ), 
          accountEmail: CostumeText(
            text: 'NAMA', 
            textStyle: DrawerNamaTextStyle
          ),
          currentAccountPicture: CircleAvatar(
                  backgroundColor: kWhiteColor,
          ),
        ),
        CostumeDrawer()
      ],
    ),
  ),
);