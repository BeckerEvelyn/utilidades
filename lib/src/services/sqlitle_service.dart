import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:utilidades/src/models/person_model.dart';

class SqlitleService {
  static final SqlitleService _instance = SqlitleService._internal();
  factory SqlitleService() => _instance;
  SqlitleService._internal();

  static Database? _db;

  Future<Database> get db async {
    _db ??= await _initDB('app.ab');
    return _db!;
  }

  Future<Database> _initDB(String name) async {
    final path = join(await getDatabasesPath(), name);
    return openDatabase(path, version: 1, onCreate:  _onCreate);
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
  CREATE TABLEpessoas (
  id INTERGER PRIMARY KEY AUTOINCREMENT,
  nome TEXT NOT NULL,
  idade INTEGER NOT NULL
  )
  ''' );
  }

  Future<int> isertPerson(PersonModel person) async {
    final database = await db;
    return database.insert('pessoas', person.toMap());
  }

  Future<List<PersonModel>> getAllPerson() async {
    final database = await db;
    final result = await database.query('pessoas');
    return result.map((e) => PersonModel.fromMap(e)).toList();
  }

  Future<void> deletePerson(int id) async {
    final database = await db;
    await database.delete('pessoas', where: 'id = ?', whereArgs: [id]);
  }


}