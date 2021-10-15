import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<HomePage>{
  int numero=0;
  void incrementar(){
    setState(() {
      numero++;
    });
  }
  void zerar(){
    setState(() {
      numero=0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(title: Text('Desenv. Apps Móveis'),),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('$numero'),
                ElevatedButton(onPressed: incrementar, child: Text('incrementar')),
                ElevatedButton(onPressed: zerar, child: Text('zerar'))
              ],
            ),
          )
      );
  }
}
