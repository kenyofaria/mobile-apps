import 'package:flutter/material.dart';

class FilmeVO extends StatelessWidget{

  final String titulo;
  final String subTitulo;
  final DateTime dataItem;

  const FilmeVO(this.titulo, this.subTitulo, this.dataItem);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(titulo),
        subtitle: Text(subTitulo),
        leading: const Icon(Icons.movie),
      ),
    );
  }

}