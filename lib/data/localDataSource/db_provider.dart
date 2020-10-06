import 'package:flutter/cupertino.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBProvider {
  DBProvider._privateConstructor();
  static final DBProvider db = DBProvider._privateConstructor();

  static Database _database;

  Future<Database> get database async {
    _database ??= await initDB();
    return _database;
  }

  Future<Database> initDB() async {
    WidgetsFlutterBinding.ensureInitialized();
    final Future<Database> database = openDatabase(
        join(await getDatabasesPath(), 'word_database.db'),
        onCreate: (db, version) {
          return db.execute(
            "CREATE TABLE words(id INTEGER PRIMARY KEY, fr TEXT, en TEXT)",
          );
        },
        version: 1
    );
    return database;
  }
}