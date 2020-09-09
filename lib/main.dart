import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "Contador de Pessoas", home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _people = 0;

  void _changePeople(int delta) {
    setState(() {
      _people += delta;
      if(_people <= 0) _people = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset("images/bar.jpg", fit: BoxFit.cover, height: 1000.0),
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text("Pessoas = $_people",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                      child: Text("+1",
                          style:
                              TextStyle(fontSize: 40.0, color: Colors.white)),
                      onPressed: () {_changePeople(1);})),
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                      child: Text("-1",
                          style:
                              TextStyle(fontSize: 40.0, color: Colors.white)),
                      onPressed: () {_changePeople(-1);}))
            ],
          ),
        ],
      )
    ]);
  }
}
