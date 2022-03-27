import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io' as io;

class DbHelper {
  static Database? _database;
  //NAMA DATABASE
  static const String dbName = 'perjalanan.db';
  //DATABASE VERSION
  static const int dbVersion = 1;
  //NAMA TABLE
  static const String tableUser = 'user';
  //NAMA KOLOM
  static const String CNik = 'nik';
  static const String CNama = 'nama';

  Future<Database?> get db async {
    if (_database != null) {
      return _database;
    }

    _database = await initDb();

    return _database;
  }

  initDb() async {
  io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
  String path = join(documentsDirectory.path, dbName);
  var db = await openDatabase(path, version: dbVersion, onCreate:  _onCreate);
  return db;
  }

  _onCreate(Database db, int intVersion) async {
    await db.execute("CREATE TABLE $tableUser ("
    " $CNik TEXT, "
    " $CNama TEXT,"
    " PRIMARY KEY ($CNik)"
    ")");

  }
}