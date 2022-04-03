class Perjalanan {
  int? id;
  String? lokasi;
  String? tanggal;
  String? jam;
  String? jenisPerjalanan;
  String? catatan;
  String? suhu;

  perjalananMap () {
    var mapping = Map<String, dynamic>();
    mapping['id']= id;
    mapping['lokasi']=lokasi;
    mapping['tanggal']= tanggal;
    mapping['jam']= jam;
    mapping['jenisPerjalanan']= jenisPerjalanan;
    mapping['catatan']= catatan;
    mapping['suhu']= suhu;

    return mapping;
  }
}