// ignore_for_file: avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/book.dart';

class DatabaseHelper {
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  static final CollectionReference librosCollection = _firestore.collection(
    'libros',
  );

  Future<void> insertBook(Book book) async {
    await librosCollection.add(book.toMap());
  }

  Future<List<Book>> getBooks() async {
    final snapshot = await librosCollection.get();

    return snapshot.docs.map((doc) {
      final data = doc.data() as Map<String, dynamic>;
      print("entra al get");
      return Book(
        id: doc.id,
        title: data["titulo"] ?? "",
        author: data["autor"] ?? "",
        status: data["estado"] ?? "",
        note: data["nota"] ?? "",
      );
    }).toList();
  }

  Future<void> updateBook(Book book) async {
    await librosCollection.doc(book.id).update(book.toMap());
  }

  Future<void> deleteBook(String id) async {
    await librosCollection.doc(id).delete();
  }
}

/*import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../models/book.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;
  static Database? _database;

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), "library.db");
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE books(id INTEGER PRIMARY KEY, title TEXT, author TEXT, status TEXT, note TEXT)',
        );
      },
    );
  }

  Future<void> insertBook(Book book) async {
    final db = await database;
    await db.insert(
      'books',
      book.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<Book>> getBooks() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('books');
    return List.generate(maps.length, (i) {
      return Book(
        id: maps[i]['id'],
        title: maps[i]['title'],
        author: maps[i]['author'],
        status: maps[i]['status'],
        note: maps[i]['note'],
      );
    });
  }

  Future<void> updateBook(Book book) async {
    final db = await database;
    await db.update('books', book.toMap(), where: 'id=?', whereArgs: [book.id]);
  }

  Future<void> deleteBook(String id) async {
    final db = await database;
    await db.delete('books', where: 'id = ?', whereArgs: [id]);
  }
}*/
