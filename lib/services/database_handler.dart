
import 'dart:developer';

import 'package:peduli_diri/models/perjalanan_model.dart';
import 'package:peduli_diri/models/user_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io' as io;

class DbHelper {
  static Database? _database;
  //NAMA DATABASE
  static const String dbName = 'peduli.db';
  //DATABASE VERSION
  static const int dbVersion = 2;
  //NAMA TABLE
  static const String tableUser = 'user';
  //NAMA KOLOM
  static const String CNik = 'nik';
  static const String CNama = 'nama';
  static const String CFK = 'FK_data_perjalanan';

  //TABLE PERJALANAN
  static const String tablePerjalanan = 'perjalanan';
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
    // await db.execute("CREATE TABLE $tableUser ("
    // " $CNik TEXT, "
    // " $CNama TEXT,"
    // " PRIMARY KEY ($CNik)"
    // ")");
    // await db.execute("CREATE TABLE $tablePerjalanan ("
    // " $cid"
    // " $CId INTEGER PRIMARY KEY AUTO INCREMENT, "
    // " $CLokasi TEXT, "
    // " $CTanggal TEXT, "
    // " $CJam TEXT, "
    // " $Cjenis TEXT, "
    // " $CCatatan TEXT, "
    // " $CSuhu DOUBLE,"
    // ")");

//     await db.execute('''
//     CREATE TABLE $tablePerjalanan ( $CId INTEGER PRIMARY KEY AUTO INCREMENT, $CLokasi TEXT, $CTanggal TEXT, $CJam TEXT, $Cjenis TEXT,
//  $CCatatan TEXT,  $CSuhu DOUBLE, )''');
    
    await db.execute('''
          CREATE TABLE $tableUser (
            $CNik TEXT PRIMARY KEY,
            $CNama TEXT,
            $CFK INTEGER,
            FOREIGN KEY ($CFK) REFERENCES $tablePerjalanan($CId)
          )
          ''');await db.execute('''
          CREATE TABLE $tablePerjalanan (
            $CId INTEGER PRIMARY KEY AUTOINCREMENT,
            $CLokasi TEXT,
            $CTanggal TEXT,
            $CJam TEXT,
            $Cjenis TEXT,
            $CCatatan TEXT,
            $CSuhu TEXT
          )
          ''');
  }


  Future<UserModel> saveData( UserModel user) async {

    try {
      var dbClient = await db;
      user.nik = (await dbClient!.insert(tableUser, user.toMap())).toString( );
      inspect(user);
      print(user);
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

  Future<List<UserModel>> getUser () async {
    var dbClient = await db;
    var result = await dbClient!.query(tableUser, orderBy: '$CNik ASC');
    List<UserModel> userList = result.isNotEmpty ? result.map((e) => UserModel.fromMap(e)).toList() : [];
    inspect(userList);
    return userList;
  }

  Future<UserModel> getLoginUser(String nik,  String nama) async {
    var dbClient = await db;
    var res = await dbClient!.rawQuery("SELECT * FROM $tableUser  WHERE $CNik = '$nik' AND $CNama = '$nama'");


    if (res.length > 0) {
      return UserModel.fromMap(res.first);
    }
      return Future.error('Error'); 
  }

  Future<PerjalananModel> insertData(PerjalananModel perjalanan) async {

    try {
      var dbClient = await db;
      perjalanan.id=(await dbClient!.insert(tablePerjalanan, perjalanan.toMap())).toInt();
      print(perjalanan.id);
      return perjalanan;
      
    } catch (e) {
      return Future.error('Error');
    }
  }


  // Future<List<Map<String, dynamic>>> getPerjalanan() async {
  //   var dbClient = await db;
  //   // var result = await dbClient!.rawQuery('SELECT * FROM $tablePerjalanan ORDER BY $CId ASC');
  //   var result = await dbClient!.query(tablePerjalanan, orderBy: '$CId ASC');
  //   return result.toList();
  //   // final List<Map<String, dynamic?>> resultQuery = await dbClient!.query(tablePerjalanan, orderBy: '$CId ASC');
  //   // return resultQuery.map((e) => PerjalananModel.fromMap(e)).toList();
  // }

  Future <List<PerjalananModel>> getPerjalanan() async {
    var dbClient = await db;
    var result = await dbClient!.query(tablePerjalanan, orderBy: '$CTanggal DESC');
    List<PerjalananModel> perjalananList = result.isNotEmpty ? result.map((e) => PerjalananModel.fromMap(e)).toList() : [];
    inspect(perjalananList);
    return perjalananList;
  }
}