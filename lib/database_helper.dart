import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart' as sql;

class Database {
  static Future<void> createTables(sql.Database database) async {
    await database.execute("""CREATE TABLE users(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        name TEXT,
        username TEXT,
        password TEXT,
        birthdate DATETIME,
        photo TEXT,
        createdAt DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
        FOREIGN KEY (foods_id) REFERENCES foods(id)
        FOREIGN KEY (menus_id) REFERENCES menus(id)
      )""");

    await database.execute("""CREATE TABLE foods(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        name TEXT,
        category TEXT,
        type TEXT,
        photo TEXT,
        createdAt DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
        FOREIGN KEY (users_id) REFERENCES users(id)
        FOREIGN KEY (menus_id) REFERENCES menus(id)
      )""");

    await database.execute("""CREATE TABLE menus(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        name TEXT,
        createdAt DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
        FOREIGN KEY (foods_id) REFERENCES foods(id)
        FOREIGN KEY (users_id) REFERENCES users(id)
      )""");
  }

  static Future<sql.Database> database() async {
    return sql.openDatabase(
      'bd_nutricao.db',
      version: 1,
      onCreate: (sql.Database database, int version) async {
        await createTables(database);
      },
    );
  }

  // Insere um novo registro
  static Future<int> insertUsers(String name, String username, String password, String birthdate, String photo) async {
    final database = await Database.database();

    final data = {'name': name, 'username': username, 'password': password, 'birthdate': DateTime.parse(birthdate), 'photo': photo, 'createdAt': DateTime.now().toString()};

    final id = await database.insert('users', data,
        conflictAlgorithm: sql.ConflictAlgorithm.replace);
    return id;
  }

  static Future<int> insertFoods(String name, String category, String type, String? photo) async {
    final database = await Database.database();

    final data = {'name': name, 'category': category, 'type': type, 'photo': photo, 'createdAt': DateTime.now().toString()};

    final id = await database.insert('foods', data,
        conflictAlgorithm: sql.ConflictAlgorithm.replace);
    return id;
  }

  static Future<int> insertMenus(String name) async {
    final database = await Database.database();

    final data = {'name': name, 'createdAt': DateTime.now().toString()};

    final id = await database.insert('menus', data,
        conflictAlgorithm: sql.ConflictAlgorithm.replace);
    return id;
  }

  // Retorna todos os registros da tabela
  static Future<List<Map<String, dynamic>>> showAllUsers() async {
    final database = await Database.database();
    return database.query('users', orderBy: "createdAt");
  }

  static Future<List<Map<String, dynamic>>> showAllFoods() async {
    final database = await Database.database();
    return database.query('foods', orderBy: "createdAt");
  }

  static Future<List<Map<String, dynamic>>> showAllMenus() async {
    final database = await Database.database();
    return database.query('menus', orderBy: "createdAt");
  }

  // Atualiza um registro
  static Future<int> updateUsers(
      int id, String name, String username, String password, DateTime birthdate, String photo) async {
    final database = await Database.database();

    final data = {
      'name': name, 
      'username': username, 
      'password': password, 
      'birthdate': birthdate, 
      'photo': photo, 
      'createdAt': DateTime.now().toString()
    };

    final result =
        await database.update('users', data, where: "id = ?", whereArgs: [id]);
    return result;
  }

  static Future<int> updateFoods(
      int id, String name, String category, String type, String? photo) async {
    final database = await Database.database();

    final data = {
      'name': name, 
      'category': category, 
      'type': type, 
      'photo': photo, 
      'createdAt': DateTime.now().toString()
    };

    final result =
        await database.update('foods', data, where: "id = ?", whereArgs: [id]);
    return result;
  }

  static Future<int> updateMenus(
      int id, String name) async {
    final database = await Database.database();

    final data = {
      'name': name, 
      'createdAt': DateTime.now().toString()
    };

    final result =
        await database.update('menus', data, where: "id = ?", whereArgs: [id]);
    return result;
  }

  // Remove um registro
  static Future<void> destroyUsers(int id) async {
    final database = await Database.database();
    try {
      await database.delete("users", where: "id = ?", whereArgs: [id]);
    } catch (err) {
      debugPrint("Ocorreu algum erro ao remover o registro: $err");
    }
  }

  static Future<void> destroyFoods(int id) async {
    final database = await Database.database();
    try {
      await database.delete("foods", where: "id = ?", whereArgs: [id]);
    } catch (err) {
      debugPrint("Ocorreu algum erro ao remover o registro: $err");
    }
  }

  static Future<void> destroyMenus(int id) async {
    final database = await Database.database();
    try {
      await database.delete("menus", where: "id = ?", whereArgs: [id]);
    } catch (err) {
      debugPrint("Ocorreu algum erro ao remover o registro: $err");
    }
  }
}