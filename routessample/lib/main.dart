import 'package:flutter/material.dart';

void main() {
  runApp(
    const Programa()
  );
}

class Programa extends StatelessWidget{
  const Programa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Principal(),
    );
  }

}

class Principal extends StatelessWidget{
  const Principal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Principal"),),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Secundaria()));
          },
          child: const Text("go"),
        ),
      ),
    );
  }
}

class Secundaria extends StatelessWidget{
  const Secundaria({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Secundaria"),),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("back"),
        ),
      ),
    );
  }
  
}


