import 'package:crudsample/dao/filme_dao.dart';
import 'package:flutter/material.dart';
import 'package:crudsample/vo/filme_vo.dart';
import 'package:crudsample/model/filme.dart';

class ListaDeFilmes extends StatefulWidget{

  @override
  _FilmesListState createState() => _FilmesListState();
}

class _FilmesListState extends State<ListaDeFilmes>{
  final FilmeDao _dao = FilmeDao();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista de filmes')),
      body: FutureBuilder<List<Filme>>(
          initialData: [],
          future: _dao.findAll(),
          builder: (context, snapshot){
                final List<Filme> filmes = snapshot.requireData;
                return ListView.builder(
                  itemBuilder: (context, index) {
                  final Filme filme = filmes[index];
                  return FilmeVO(filme.titulo, filme.subTitulo, filme.lancamento);
                  },
                  itemCount: filmes.length,
                );
        }),
    );
  }

}