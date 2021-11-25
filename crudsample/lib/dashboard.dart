import 'package:flutter/material.dart';
import 'package:crudsample/lista_de_filmes.dart';
import 'package:crudsample/novo_filme.dart';

class DashBoard extends StatelessWidget{

  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(onPressed: () => {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ListaDeFilmes()))
          }, child: const Text("Itens")),
          ElevatedButton(onPressed: () => {
            Navigator.push(context, MaterialPageRoute(builder: (context) => NovoFilme()))
          }, child: const Text("Novo Item")),
        ],
      ),
    );
  }

}