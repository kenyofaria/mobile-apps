import 'package:crudsample/dao/filme_dao.dart';
import 'package:flutter/material.dart';
import 'package:crudsample/model/filme.dart';

class NovoFilme extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return NovoFilmeState();
  }
}

class NovoFilmeState extends State<NovoFilme> {

  final FilmeDao dao = new FilmeDao();

  DateTime dataSelecionada = DateTime.now();
  final inputTituloController = TextEditingController();
  final inputSubTituloController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Novo filme')),
        body: Column(
          children: [
            Padding(padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: const InputDecoration(
                    hintText: 'informe o título'
                ),
                controller: inputTituloController,
              ),
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
              if(inputTituloController.text.isEmpty){
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Informe o titulo"), duration: Duration(seconds: 1),))
              }else{
                dao.save(Filme(0, inputTituloController.text, inputSubTituloController.text, dataSelecionada)).then((value) =>
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Filme salvo"), duration: Duration(seconds: 1),))
                )
              }
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