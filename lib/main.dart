import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Hello You',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new HelloYou(),
    );
  }
}

class HelloYou extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HelloYouState();
}

class _HelloYouState extends State<HelloYou> {
  String name = '';

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: 'Please Insert Your Name'
              ),
              onChanged: (String string){
                setState(() {
                   name = string;               
                });
              },
            ),
            DropdownButton<String>(
              items: ['Dollars', 'Idr', 'Euro', 'Ponds'].map((String value){
                return DropdownMenuItem<String> (
                  value: value,
                  child: Text(value)
                );
              }).toList(),onChanged: (String Value) {},
              ),
            Text('Hello' + name + '!')
          ],
        ),
      ),
    );
  }
}