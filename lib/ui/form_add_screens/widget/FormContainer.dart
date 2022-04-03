import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:peduli_diri/ui/form_add_screens/widget/CostumeField/catatan.dart';
import 'package:peduli_diri/ui/form_add_screens/widget/CostumeField/jam.dart';
import 'package:peduli_diri/ui/form_add_screens/widget/CostumeField/jenis.dart';
import 'package:peduli_diri/ui/form_add_screens/widget/CostumeField/tanggal.dart';
import 'package:peduli_diri/ui/form_add_screens/widget/CostumeField/tempatSuhu.dart';
import 'package:peduli_diri/ui/form_add_screens/widget/CostumeField/testJenis.dart';
import 'package:peduli_diri/ui/shared/share_style.dart';
import 'package:peduli_diri/ui/widgets/CostumeButon.dart';
import 'package:peduli_diri/ui/widgets/CostumeText.dart';
import 'package:peduli_diri/utility/constans.dart';


class FormContainer extends StatefulWidget {
  const FormContainer({ Key? key }) : super(key: key);

  @override
  State<FormContainer> createState() => _FormContainerState();
}

class _FormContainerState extends State<FormContainer> {
  final _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      
      child: Container(
        margin: EdgeInsets.fromLTRB(18, 10, 18, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CostumeText(
              text: 'Tempat yang dikunjungi', 
              textStyle: FmTitleFdTextStyle
            ),

            FieldTmptSuhu(
              hintText: 'Lokasi yang dikunjungi',
              suffixIcon: Icons.add_location_rounded,
              textInputType: TextInputType.streetAddress,
            ),

            CostumeText(
              text: 'Waktu mengunjungi', 
              textStyle: FmTitleFdTextStyle
            ),


            Container(child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FieldTanggal(),
                FieldJam(),
              ],
            )),

            CostumeText(
              text: 'Jenis kegiatan', 
              textStyle: FmTitleFdTextStyle
            ),

            TestJenis(),


            CostumeText(
              text: 'Catatan', 
              textStyle: FmTitleFdTextStyle
            ),
            
            FieldCatatan(),

            CostumeText(
              text: 'Suhu tubuh', 
              textStyle: FmTitleFdTextStyle
            ),
           
            FieldTmptSuhu(
              textInputType: TextInputType.numberWithOptions(
                signed: false,
              ),
              inputFormater: [
                FilteringTextInputFormatter.allow(RegExp(r'[0-9.,]')),
                LengthLimitingTextInputFormatter(5)
              ],
              hintText: 'Suhu tubuh Anda', 
              suffixIcon: Icons.thermostat_rounded,
              suffixText: '°C',
            ),

            

            SizedBox(height: 50,),

            CostumeButton(
              text: 'Simpan',
              textStyle: LrBtWhiteTextStyle, 
              colorButton: kPrimaryColor, 
              functionBt: (){
                Navigator.pop(context);
              }
            ),
            
            SizedBox(height: 10,),

            CostumeButton(
              text: 'Batal',
              textStyle: LrBtWhiteTextStyle, 
              colorButton: kRedColor, 
              functionBt: (){
                Navigator.pop(context);
              }
            ),
          ],
        ),
      ),
    );
  }
}