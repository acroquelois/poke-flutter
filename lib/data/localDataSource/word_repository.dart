import 'package:first_flutter_app/data/entities/word.dart';
import 'package:first_flutter_app/data/localDataSource/db_provider.dart';
import 'package:sqflite/sqflite.dart';

abstract class WordRepository {
  Future<void> insertWord(Word word);
  Future<List<Word>> words();
}

class WordRepositoryImpl implements WordRepository {
  @override
  Future<void> insertWord(Word word) async {
    // Get a reference to the database.
    final Database db = await DBProvider.db.database;

    // Insert the Dog into the correct table. You might also specify the
    // `conflictAlgorithm` to use in case the same dog is inserted twice.
    //
    // In this case, replace any previous data.
    await db.insert(
      'words',
      word.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
  @override
  Future<List<Word>> words() async {
    // Get a reference to the database.
    final Database db = await DBProvider.db.database;

    // Query the table for all The Dogs.
    final List<Map<String, dynamic>> maps = await db.query('words');

    // Convert the List<Map<String, dynamic> into a List<Dog>.
    return List.generate(maps.length, (i) {
      return Word(
        id: maps[i]['id'],
        fr: maps[i]['fr'],
        en: maps[i]['en'],
      );
    });
  }
}
