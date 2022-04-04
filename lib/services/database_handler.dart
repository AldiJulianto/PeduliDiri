import 'package:peduli_diri/models/user_model.dart';
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

  //TABLE PERJALANAN
  static const String tablePerjalanan = 'tbPerjalanan';
  //NAMA KOLOM
  static const String CId = 'id';
  static const String CLokasi = 'lokasi';
  static const String CTanggal = 'tanggal';
  static const String CJam = 'jam';
  static const String Cjenis = 'jenisPerjalanan';
  static const String CCatatan = 'catatan';
  static const String CSuhu = 'suhu';

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
    // await db.execute("CREATE TABLE $tablePerjalanan ("
    // " $CId INTEGER PRIMARY KEY AUTO INCREMENT, "
    // " $CLokasi TEXT, "
    // " $CTanggal TEXT, "
    // " $CJam TEXT, "
    // " $Cjenis TEXT, "
    // " $CCatatan TEXT, "
    // " $CSuhu DOUBLE,"
    // ")");
  }


  Future<UserModel> saveData( UserModel user) async {

    try {
      var dbClient = await db;
      user.nik = (await dbClient!.insert(tableUser, user.toMap())).toString( );
      return user;      
    } catch (e) {
      return Future.error('Error');
    }
    
    // if (user.nik.code) {
    //   return Future.error('Error');
    // } else{
    //   return user;                     
    // }
  }

  Future<UserModel> getLoginUser(String nik,  String nama) async {
    var dbClient = await db;
    var res = await dbClient!.rawQuery("SELECT * FROM $tableUser  WHERE $CNik = '$nik' AND $CNama = '$nama'");


    if (res.length > 0) {
      return UserModel.fromMap(res.first);
    }
      return Future.error('Error'); 
  }
}