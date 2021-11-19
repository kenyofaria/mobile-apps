
import 'package:flutterpersistence/filme.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> createDatabase() {
  return getDatabasesPath().then((dbPath) {
    final String path = join(dbPath, 'filmes.db');
    return openDatabase(path, onCreate: (db, version) {
      db.execute('CREATE TABLE filmes('
          'id INTEGER PRIMARY KEY, '
          'titulo TEXT, '
          'genero Text,'
          'lancamento Text)');
    }, version: 1);
  });
}

Future<int> save(Filme filme) {
  return createDatabase().then((db) {
    final Map<String, dynamic> filmesMap = Map();
    filmesMap['titulo'] = filme.titulo;
    filmesMap['genero'] = filme.genero;
    filmesMap['lancamento'] = filme.lancamento.toString();
    return db.insert('filmes', filmesMap);
  });
}

Future<List<Filme>> findAll() {
  return createDatabase().then((db) {
    return db.query('filmes').then((maps) {
      final List<Filme> filmes = [];
      for (Map<String, dynamic> map in maps) {
        final Filme filme = Filme(
          map['id'],
          map['titulo'],
          map['genero'],
          DateTime.parse(map['lancamento'])
        );
        filmes.add(filme);
      }
      return filmes;
    });
  });
}

