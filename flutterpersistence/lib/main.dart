import 'package:flutter/material.dart';
import 'package:flutterpersistence/database.dart';
import 'package:flutterpersistence/filme.dart';

void main() {
  runApp(MyApp());
  save(Filme(0, "duro de matar 2", "acao", DateTime.now()))
      .then((duroDeMatarId) => {
        debugPrint('duro de mater inserido com id $duroDeMatarId'),
        save(Filme(0, "o resgate do soldado ryan", "guerra", DateTime.now()))
            .then((resgateId) => {
          debugPrint('resgate do soldado ryan inserido com id $resgateId'),
              findAll().then((filmes) => {
                filmes.forEach((filme) {
                  debugPrint(filme.toString());
                })
              })
            })
      });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
