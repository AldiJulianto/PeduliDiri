import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';


class DatabaseConnection {
  setDatabase() async {
    var directory = await getApplicationDocumentsDirectory();
    var path = join(directory.path, 'db_perjalanan_sqflite');
    var database = await openDatabase(path, version: 1, onCreate: _onCreatingDatabase);

    return database;
  }

  _onCreatingDatabase(Database database, int version)  async{
    database.execute("CREATE TABLE perjalanan (id_perjalanan INTEGER PRIMARY KEY AUTO INCREMENT, lokasi TEXT, tanggal TEXT, jam TEXT, jenisPerjalanan TEXT, catatan TEXT, suhu TEXT)"); 
  } 
}