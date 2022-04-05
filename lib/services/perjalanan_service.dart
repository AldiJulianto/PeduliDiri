import 'package:flutter/foundation.dart';
import 'package:peduli_diri/models/perjalanan_model.dart';
import 'package:peduli_diri/services/repository_perjalanan.dart';

// class PerjalananServices {
//   late RepositoryPerjalanan _repositoryPerjalanan;

//   PerjalananServices() {
//     _repositoryPerjalanan = RepositoryPerjalanan();
//   }

//   savePerjalanan(Perjalanan perjalanan) async{
//     return await _repositoryPerjalanan.insertData('perjalanan', perjalanan.perjalananMap());
//   }
// }


class testService {
  saveTest(PerjalananModels perjalanan) {
    print('Lokasi Anda : ${perjalanan.lokasi}');
    print('Tanggal Perjalanan Anda : ${perjalanan.tanggal}');
    print('Jam : ${perjalanan.jam}');
    print('Catatan Anda : ${perjalanan.catatan}');
    print('Suhu tubuh anda : ${perjalanan.suhu}');
    
  }
}