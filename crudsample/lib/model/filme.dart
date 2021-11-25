import 'package:flutter/gestures.dart';

class Filme{

  final int id;
  final String titulo;
  final String subTitulo;
  final DateTime lancamento;

  Filme(this.id, this.titulo, this.subTitulo, this.lancamento);

  @override
  String toString() {
    return 'Filme { id: $id titulo: $titulo subTitulo: $subTitulo lancamento: $lancamento}';
  }
}