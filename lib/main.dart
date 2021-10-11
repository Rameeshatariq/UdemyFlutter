import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {
  String _value = 'Hello World';
  int _num = 0;

  void onPressed(){
    setState(() {
      _value = "Areeb";
    });
  }

  void _add(){
    setState(() {
      _num++;
    });
  }

  void _sub(){
    setState(() {
      _num--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name here'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new
        Center( child: new
        Column(
          children: <Widget>[
            new Text(_value),
            new RaisedButton(onPressed: onPressed, child: new Text('Click me'),),
           // new FlatButton(onPressed: onPressed, child: new Text('Click me'),),

           /* new Text('Value is ${_num}'),
            new IconButton(onPressed: _add, icon: Icon(Icons.add),),
            new IconButton(onPressed: _sub, icon: Icon(Icons.remove),),
*/
          ],
        )
        ),
      ),
    );
  }
}