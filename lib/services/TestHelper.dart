// import 'package:sqflite/sqflite.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:path/path.dart';
// import 'package:peduli_diri/models/TestModel.dart';
// import 'dart:io';
// import 'dart:async';

// class TestDbProvider {
//   Future<Database> init() async {
//     Directory directory = await getApplicationDocumentsDirectory();
//     final path = join(directory.path, "test.db");

//     return await openDatabase(
//       path,
//       version: 1,
//       onCreate: (Database db, int version) async {
//         await db.execute("""CREATE TABLE test (id INTEGER PRIMARY KEY AUTOINCREMENT, lokasi TEXT, tanggal TEXT, jam TEXT, jenisPerjalanan TEXT, catatan TEXT, suhu TEXT)""");
//       }
//     );
//   }

//   Future<int>addItem (TestPerjalananModel testPerjalananModel) async {
//     final db = await init();
//     return db.insert("test", testPerjalananModel.toMap(),
//     conflictAlgorithm: ConflictAlgorithm.ignore
//     );
//   }

//   Future<List<TestPerjalananModel>> fetchTest() async {
//     final db = await init();
//     final maps = await db.query("test");

//     return List.generate(maps.length, (i){
//       return TestPerjalananModel(
//         lokasi: maps[i]['id']
//       );
//     });
//   } 
// }