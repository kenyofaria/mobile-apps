import 'package:crudsample/dao/database.dart';
import 'package:crudsample/model/filme.dart';
import 'package:sqflite/sqflite.dart';

class FilmeDao{
  static const String tableSql = 'CREATE TABLE $_tableName('
      '$_id INTEGER PRIMARY KEY, '
      '$_titulo TEXT, '
      '$_subTitulo Text,'
      '$_lancamento Text)';
  static const String _tableName = 'filmes';
  static const String _id = 'id';
  static const String _titulo = 'titulo';
  static const String _subTitulo = 'sub_titulo';
  static const String _lancamento = 'lancamento';

  Map<String, dynamic> _toMap(Filme filme) {
    final Map<String, dynamic> map = Map();
    map[_titulo] = filme.titulo;
    map[_subTitulo] = filme.subTitulo;
    map[_lancamento] = filme.lancamento.toString();
    return map;
  }

  Future<int> save(Filme filme) async {
    final Database db = await getDatabase();
    Map<String, dynamic> map = _toMap(filme);
    return db.insert(_tableName, map);
  }

  Future<List<Filme>> findAll() async {
    final Database db = await getDatabase();
    final List<Map<String, dynamic>> result = await db.query(_tableName);
    List<Filme> filmes = _toList(result);
    return filmes;
  }

  List<Filme> _toList(List<Map<String, dynamic>> result) {
    final List<Filme> filmes = [];
    for (Map<String, dynamic> row in result) {
      final Filme filme = Filme(
        row[_id],
        row[_titulo],
        row[_subTitulo],
        DateTime.parse(row[_lancamento])
      );
      filmes.add(filme);
    }
    return filmes;
  }
}