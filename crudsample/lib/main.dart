import 'package:flutter/material.dart';
import 'package:crudsample/dashboard.dart';

void main() {
  runApp(
      const Programa()
  );
}

class Programa extends StatelessWidget{
  const Programa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: const Text("App de Filmes"),),
          body: DashBoard(),
        )
    );
  }
}