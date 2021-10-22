import 'package:flutter/material.dart';
import 'package:routessample/model/item.dart';

class NovoItem extends StatefulWidget{
  List<Item> lista;
  NovoItem(this.lista);

  @override
  State<StatefulWidget> createState() {
    return NovoItemState(lista);
  }
}

class NovoItemState extends State<NovoItem> {

  DateTime dataSelecionada = DateTime.now();

  final inputTituloController = TextEditingController();
  final inputSubTituloController = TextEditingController();

  List<Item> lista;

  NovoItemState(this.lista);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title:Text('Novo filme')),
        body: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                  hintText: 'informe o título'
              ),
              controller: inputTituloController,
            ),
            TextField(
              decoration: const InputDecoration(
                  hintText: 'informe o subtitulo'
              ),
              controller: inputSubTituloController
            ),
            Text(
                "${dataSelecionada.toLocal()}".split(" ")[0]
            ),
            ElevatedButton(
                onPressed: () => _selecionaData(context),
                child: const Icon(Icons.calendar_today)
            ),
            ElevatedButton(onPressed: ()=>{
              lista.add(
                  Item(inputTituloController.text,
                      inputSubTituloController.text,
                      dataSelecionada)
              )
            }, child: const Text('salvar'))
          ],
        )
    );
  }
  _selecionaData(BuildContext context) async{
    final DateTime? retornoDatePicker = await showDatePicker(
        context: context,
        initialDate: dataSelecionada,
        firstDate: DateTime(2000),
        lastDate: DateTime(2025)
    );
    if(retornoDatePicker!=null && retornoDatePicker!=dataSelecionada){
      setState(
              () => dataSelecionada = retornoDatePicker
      );
    }
  }

}
