import 'package:flutter/material.dart';
import 'package:peduli_diri/ui/shared/share_style.dart';
import 'package:peduli_diri/ui/widgets/CostumeText.dart';
import 'package:peduli_diri/utility/constans.dart';
import 'package:peduli_diri/utility/route_name.dart';

class CostumeDrawer extends StatelessWidget {
  const CostumeDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        //Tammbah Data Perjalanan
        CostumeListTile(
          iconData: Icons.my_library_add_rounded, 
          text: 'Tambah data perjalanan', 
          function: (){
            Navigator.pushNamed(context, FormAddRoute);
          },
        ),
        CostumeListTile(
          iconData: Icons.my_library_books_rounded,
          text: 'Lihat data perjalanan', 
          function: (){
            Navigator.pushNamed(context, FormDataRoute);
          },
        ),
        CostumeListTile(
          iconData: Icons.info_rounded,
          text: 'Tentang', 
          function: (){
            Navigator.pushNamed(context, TestShowRoute);
          },
        ),
        CostumeListTile(
          iconData: Icons.logout_rounded, 
          text: 'Logout', 
          function: (){
            Navigator.pushReplacementNamed(context, landingRoute);
          },
        )
      ],
    );
  }
}

class CostumeListTile extends StatelessWidget {
  final IconData iconData;
  final String text;
  final Function function;

  CostumeListTile({
    required this.iconData,
    required this.text,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(iconData, color: kWhiteColor,),
      title: CostumeText(
        text: text, 
        textStyle: DrawerNamaTextStyle
      ),
      onTap: function != null ? () => function():null,
    );
  }
}