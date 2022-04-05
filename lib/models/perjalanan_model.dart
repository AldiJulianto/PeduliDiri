// class Perjalanan {
//   int? id;
//   String? lokasi;
//   String? tanggal;
//   String? jam;
//   String? jenisPerjalanan;
//   String? catatan;
//   String? suhu;

//   perjalananMap () {
//     var mapping = Map<String, dynamic>();
//     mapping['id']= id;
//     mapping['lokasi']=lokasi;
//     mapping['tanggal']= tanggal;
//     mapping['jam']= jam;
//     mapping['jenisPerjalanan']= jenisPerjalanan;
//     mapping['catatan']= catatan;
//     mapping['suhu']= suhu;

//     return mapping;
// }
//   }

class PerjalananModels {
  int? id;
  String? lokasi;
  String? tanggal;
  String? jam;
  String? jenisPerjalanan;
  String? catatan;
  double? suhu;

  PerjalananModels (
    this.id,
    this.lokasi,
    this.tanggal,
    this.jam,
    this.jenisPerjalanan,
    this.catatan,
    this.suhu
  );

  Map<String, dynamic> toMap(){
    var map = <String, dynamic> {
      'id':id,
      'lokasi':lokasi,
      'tanggal':tanggal,
      'jam':jam,
      'jenisPerjalanan':jenisPerjalanan,
      'catatan':catatan,
      'suhu':suhu
    };

    return map;
  }

  PerjalananModels.fromMap(Map<String, dynamic>map) {
    id=map['id'];
    lokasi=map['lokasi'];
    tanggal=map['tanggal'];
    jam=map['jam'];
    jenisPerjalanan=map['jenisPerjalanan'];
    catatan=map['catatan'];
    suhu=map['suhu'];
  }
}