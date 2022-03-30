import 'package:flutter/foundation.dart';
import 'package:peduli_diri/models/perjalanan_model.dart';
import 'package:peduli_diri/services/repository_perjalanan.dart';

class PerjalananServices {
  late RepositoryPerjalanan _repositoryPerjalanan;

  PerjalananServices() {
    _repositoryPerjalanan = RepositoryPerjalanan();
  }

  savePerjalanan(Perjalanan perjalanan) async{
    return await _repositoryPerjalanan.insertData('perjalanan', perjalanan.perjalananMap());
  }
}