import 'package:flutter/material.dart';
import 'package:routessample/vo/item_vo.dart';
import 'package:routessample/model/item.dart';

class ListaDeItens extends StatelessWidget{

  final List<Item> itens;

  const ListaDeItens(this.itens);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista de itens')),
      body: ListView.builder(
          itemCount: itens.length,
          itemBuilder: (context, index) => _buildRow(index)),
    );
  }

  _buildRow(int index) {
      Item item = itens.elementAt(index);
      return ItemVO(item.titulo, item.subTitulo, item.data);
  }
}
