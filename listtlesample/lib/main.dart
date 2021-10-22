import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PrimeiraTela(),
    );
  }
}

class PrimeiraTela extends StatelessWidget{
  const PrimeiraTela({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Titulo do appBar"),),
        body: Column(
          children:  [
            const Card(
                child: ListTile(
                  leading: Icon(Icons.print),
                  title: Text("titulo do listtile"),
                  subtitle: Text("subtitulo do listtile"),
                )
            ),
            const Card(
                child: ListTile(
                  leading: Icon(Icons.monetization_on),
                  title: Text("titulo do listtile"),
                  subtitle: Text("subtitulo do listtile"),
                )
            ),
            const Card(
                child: ListTile(
                  leading: Icon(Icons.access_alarm),
                  title: Text("titulo do listtile"),
                  subtitle: Text("subtitulo do listtile"),
                )
            ),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SegundaTela()));
            },
            child: const Text("go"),)
          ],
        )
      );
  }
}

class SegundaTela extends StatelessWidget{
  const SegundaTela({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Segunda Tela")),
        body: Center(
          child: ElevatedButton(
            child: const Text("back"),
            onPressed: (){
              Navigator.pop(context);
          },),
        ),
      );
  }
  
}