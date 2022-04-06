   class UserModel {
  String? nik;
  String? nama;

  UserModel(this.nik, this.nama);

  Map<String, dynamic> toMap(){
    var map = <String, dynamic> {
      'nik':nik,
      'nama':nama
    };
    return map;
  }

  UserModel.fromMap(Map<String, dynamic> map) {
    nik=map['nik'];
    nama=map['nama'];
  }
}