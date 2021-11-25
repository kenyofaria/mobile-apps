

import 'dart:async';

import 'package:crudsample/dao/filme_dao.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> getDatabase() {
  return getDatabasesPath().then((dbPath) {
    final String path = join(dbPath, 'filmes.db');
    return openDatabase(path, onCreate: (db, version) {
      db.execute(FilmeDao.tableSql);
    }, version: 1);
  });
}