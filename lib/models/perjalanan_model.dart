class PerjalananModel {
   int? id;
  String? lokasi;
  String? tanggal;
  String? jam;
  String? jenisPerjalanan;
  String? catatan;
  String? suhu;


  PerjalananModel(
    this.id,
    this.lokasi,
    this.tanggal,
    this.jam,
    this.jenisPerjalanan,
    this.catatan,
    this.suhu,
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

  PerjalananModel.fromMap(Map<String, dynamic> map) {
    id=map['nik'];
    lokasi=map['lokasi'];
    tanggal=map['tanggal'];
    jam=map['jam'];
    jenisPerjalanan=map['jenisPerjalanan'];
    catatan=map['catatan'];
    suhu=map['suhu'];

  }
}