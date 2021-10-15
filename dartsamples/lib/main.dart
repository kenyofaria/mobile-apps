import 'package:flutter/material.dart';

void main() {
  runApp(AppContato());
}

class AppContato extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("App bar")),
        body: Column(
          children: [
            Card(
              child: ListTile(
                title: Text("Titulo"),
                subtitle: Text("Subtitulo"),
                leading: Icon(Icons.motion_photos_on_rounded),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Titulo"),
                subtitle: Text("Subtitulo"),
                leading: Icon(Icons.motion_photos_on_rounded),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Titulo"),
                subtitle: Text("Subtitulo"),
                leading: Icon(Icons.motion_photos_on_rounded),
              ),
            )



          ],
        ),
      ),
    );
  }

}
