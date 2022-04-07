import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:peduli_diri/models/perjalanan_model.dart';
import 'package:peduli_diri/services/database_handler.dart';
import 'package:peduli_diri/ui/form_add_screens/widget/CostumeField/catatan.dart';
import 'package:peduli_diri/ui/form_add_screens/widget/CostumeField/jam.dart';
import 'package:peduli_diri/ui/form_add_screens/widget/CostumeField/tanggal.dart';
import 'package:peduli_diri/ui/form_add_screens/widget/CostumeField/tempatSuhu.dart';
import 'package:peduli_diri/ui/form_add_screens/widget/CostumeField/testJenis.dart';
import 'package:peduli_diri/ui/shared/share_style.dart';
import 'package:peduli_diri/ui/widgets/CostumeAlertDialog.dart';
import 'package:peduli_diri/ui/widgets/CostumeButon.dart';
import 'package:peduli_diri/ui/widgets/CostumeText.dart';
import 'package:peduli_diri/utility/constans.dart';
import 'package:peduli_diri/utility/route_name.dart';


class FormContainer extends StatefulWidget {
  const FormContainer({ Key? key }) : super(key: key);

  @override
  State<FormContainer> createState() => _FormContainerState();
}

class _FormContainerState extends State<FormContainer> {
  final _formKey = new GlobalKey<FormState>();
  TextEditingController _lokasiController = TextEditingController();
  TextEditingController _suhuController = TextEditingController();
  TextEditingController _catatanController = TextEditingController();
  TextEditingController _tanggalController = TextEditingController();
  TextEditingController _jamController = TextEditingController();

  var dbHelper;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dbHelper = DbHelper();
    dbHelper.getPerjalanan();
  }

  // var _perjalanan = Perjalanan();
  // var _perjalananService = PerjalananServices();


  void addFungtion(BuildContext context) async {
    int? id ;
    String? jenisPerjalanan;
    String lokasi=_lokasiController.text;
    String tanggal = _tanggalController.text;
    String jam = _jamController.text;
    String suhu = _suhuController.text;
    String catatan = _catatanController.text;

    // _perjalanan.lokasi = _lokasiController.text;
    // _perjalanan.tanggal = _tanggalController.text;
    // _perjalanan.jam = _jamController.text;
    // _perjalanan.catatan = _catatanController.text;
    // _perjalanan.suhu = _suhuController.text;

   
    
    if (lokasi.isEmpty || lokasi == null || tanggal.isEmpty || tanggal == null || jam.isEmpty || jam == null || suhu.isEmpty) {
      if (lokasi.isEmpty || lokasi == null) {
        CostumeAlertDialog(
          context, 
          CoolAlertType.warning, 
          "Warning", 
          'Silahkan isi lokasi kunjungan anda', 
          'Tutup'
        );
      } else if(tanggal.isEmpty || tanggal == null){
        CostumeAlertDialog(
          context, 
          CoolAlertType.warning, 
          "Warning", 
          'Silahkan isi tanggal kunjungan anda', 
          'Tutup'
        );
      } else if (jam.isEmpty || jam == null){
          CostumeAlertDialog(
          context, 
          CoolAlertType.warning, 
          "Warning", 
          'Silahkan isi jam kunjungan anda', 
          'Tutup'
        );
      } else if(suhu.isEmpty || suhu==null){
        CostumeAlertDialog(
          context, 
          CoolAlertType.warning, 
          "Warning", 
          'Silahkan isi suhu tubuh anda', 
          'Tutup'
        );
      } 
    } else{
        _formKey.currentState!.save();
        PerjalananModel pModel = PerjalananModel(id, lokasi, tanggal, jam, jenisPerjalanan, catatan, suhu);
        dbHelper.insertData(pModel).then((perjalananData){
          print('SUKSES LURD');
          CostumeAlertAdd(context, (){Navigator.pushNamed(context, FormDataRoute);});
        }).catchError((error) {
          CostumeAlertDialog(context, CoolAlertType.error, error,
              'GAGAl BOSKU', 'Tutup');
        });

        // print('Lokasi kunjungan anda : $lokasi');
        // print('Tanggal Perjalanan : $tanggal');
        // print('Waktu perjalanan Anda :$jam');
        // print('Catatan Perjalanan Anda : $catatan');
        // print('Suhu tubuh anda $suhu');
        
    }
    
  }

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
              textEditingController: _lokasiController,
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
                FieldTanggal(
                  textEditingController: _tanggalController,
                ),
                FieldJam(
                  controller: _jamController,
                ),
              ],
            )),

            // CostumeText(
            //   text: 'Jenis kegiatan', 
            //   textStyle: FmTitleFdTextStyle
            // ),

            // TestJenis(),


            CostumeText(
              text: 'Catatan', 
              textStyle: FmTitleFdTextStyle
            ),
            
            FieldCatatan(
              controller:_catatanController,
            ),

            CostumeText(
              text: 'Suhu tubuh', 
              textStyle: FmTitleFdTextStyle
            ),
           
            FieldTmptSuhu(
              textInputType: TextInputType.numberWithOptions(
                signed: false,
              ),
              textEditingController: _suhuController,
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
                addFungtion(context);
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