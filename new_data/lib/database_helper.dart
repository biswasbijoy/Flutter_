import 'dart:io';

import 'package:new_data/student.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DataBaseHelper {
  DataBaseHelper._privateConstructor();
  static final DataBaseHelper instance = DataBaseHelper._privateConstructor();

  static Database? _database;

  Future<Database> get database async => _database ?? await _initDatabase();

  Future<Database> _initDatabase() async {
    Directory documentDirectory = await getApplicationSupportDirectory();
    String path = join(documentDirectory.path, "xyz.db");
    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
    CREATE TABLE student(
      id INTEGER PRIMARY KEY,
      name TEXT
    )
    ''');
  }

  Future<List<Student>> getStudent() async {
    Database db = await instance.database;
    var students = await db.query('student', orderBy: 'name');
    List<Student> studentList = students.isEmpty
        ? []
        : students.map((e) => Student.fromMap(e)).toList();
    return studentList;
  }

  Future<int> addData(Student stu) async {
    Database db = await instance.database;
    return await db.insert('student', stu.toMap());
  }
}
