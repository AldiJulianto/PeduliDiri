class Perjalanan {
  String? waktu;
  String? lokasi;
  String? tipe;
  String? catatan;
  String? suhu;

  perjalananMap () {
    var mapping = Map<String, dynamic>();
    mapping['waktu'];
    mapping['lokasi'];
    mapping['tipe'];
    mapping['catatan'];
    mapping['suhu'];

    return mapping;
  }
}