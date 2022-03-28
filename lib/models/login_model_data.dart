class UserModels {
  final String? nik;
  final String? nama;

  UserModels ({
    this.nik,
    this.nama
  });

  UserModels.fromMap(Map<String, dynamic> res): 
  nik = res ["nik"],
  nama = res ["nama"];

  Map<String, Object?> toMap() {
    return {'nik':nik, 'nama':nama};
  }
}