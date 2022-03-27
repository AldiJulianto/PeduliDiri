class User {
  final String? nik;
  final String? nama;

  User ({
    this.nik,
    this.nama
  });

  User.fromMap(Map<String, dynamic> res): 
  nik = res ["nik"],
  nama = res ["nama"];

  Map<String, Object?> toMap() {
    return {'nik':nik, 'nama':nama};
  }
}