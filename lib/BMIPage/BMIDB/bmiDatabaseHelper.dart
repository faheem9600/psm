import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io';
import 'bmi.dart';
import 'package:path_provider/path_provider.dart';




class DatabaseHelper{

  static DatabaseHelper _databaseHelper;
  static Database _database;

  String bmiTable = 'bmi_table';
  String colId = 'id';
  String colresultbmi = 'resultbmi';
  String colDate = 'date';

  DatabaseHelper._createInstance();

  factory DatabaseHelper(){

    if(_databaseHelper == null){
      _databaseHelper = DatabaseHelper._createInstance();
    }
    return _databaseHelper;
  }

  Future<Database> get database async {

    if(_database == null) {
      _database = await initializeDatabase();
    }
    return _database;
  }

  Future<Database> initializeDatabase() async {

    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + 'bmi.db';

    var bmiDatabase = await openDatabase(path, version: 1, onCreate: _createDb);
    return bmiDatabase;
  }

  void _createDb(Database db, int newVersion) async {
    
    await db.execute('CREATE TABLE $bmiTable($colId INTEGER PRIMARY KEY AUTOINCREMENT, $colresultbmi TEXT,$colDate TEXT)');
  }
  //Fetch
  Future<List<Map<String, dynamic>>> getBmiMapList() async {
    Database db = await this.database;

    var result = await db.query(bmiTable, orderBy: '$colId ASC');
    return result;
  }

  //Insert
  Future<int> insertBmi (Bmi bmi) async {
    Database db = await this.database;
    var result = await db.insert(bmiTable, bmi.toMap());
    return result;
  }

  //Update
  Future<int> updateBmi(Bmi bmi) async {
    var db = await this.database;
    var result = await db.update(bmiTable, bmi.toMap(), where: '$colId = ?', whereArgs: [bmi.id]);
    return result;
  }

  //Delete 
  Future<int> deleteBmi(int id) async {
    var db = await this.database;
    int result = await db.rawDelete('DELETE FROM $bmiTable WHERE $colId = $id');
    return result;
  }

  // Get number of Bmi objects in database
  Future<int> getCount() async {
    Database db = await this.database;
    List<Map<String, dynamic>> x = await db.rawQuery('SELECT COUNT(*) from $bmiTable');
    int result = Sqflite.firstIntValue(x);
    return result;
  }

  // Get the 'Map List'
  Future<List<Bmi>> getBmiList() async {

    var bmiMapList = await getBmiMapList();
    int count = bmiMapList.length;

    List<Bmi> bmiList = List<Bmi>();

    for (int i = 0; i < count; i++){
      bmiList.add(Bmi.fromMapObject(bmiMapList[i]));
    }

    return bmiList;
  }
}