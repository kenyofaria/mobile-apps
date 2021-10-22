import 'package:flutter/material.dart';
import 'package:routessample/model/item.dart';
import 'package:routessample/lista_de_itens.dart';
import 'package:routessample/novo_item.dart';

class DashBoard extends StatelessWidget{

  final List<Item> itens = [Item("Jhon Wick", "De volta ao jogo", DateTime.parse("2021-01-02")),
    Item("Jogos Mortais", "Fique esperto", DateTime.parse("2021-02-02")),
    Item("O Resgate do Soldado Ryan", "Aí é bruto", DateTime.parse("2021-03-02")),
    Item("The Big Short", "Ganância", DateTime.parse("2021-04-02")),
    Item("Sniper Americano", "Macho demais", DateTime.parse("2021-05-02"))];

  DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(onPressed: () => {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ListaDeItens(itens)))
          }, child: const Text("Itens")),
          ElevatedButton(onPressed: () => {
            Navigator.push(context, MaterialPageRoute(builder: (context) => NovoItem(itens)))
          }, child: const Text("Novo Item")),
        ],
      ),
    );
  }

}