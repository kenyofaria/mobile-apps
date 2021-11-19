class Filme{
  int id;
  String titulo;
  String genero;
  DateTime lancamento;

  Filme(this.id, this.titulo, this.genero, this.lancamento);

  @override
  String toString() {
    return 'Filme {id: $id, titulo: $titulo, genero: $genero}, lancamento: $lancamento';
  }
}
