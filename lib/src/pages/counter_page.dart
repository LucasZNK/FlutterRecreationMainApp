import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final TextStyle _textStyle = new TextStyle(fontSize: 25);
  int _counter = 0;

  @override
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Lucas App"),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(400, 345, 222, 34),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Numero de clicks:",
              style: _textStyle,
            ),
            Text('$_counter', style: _textStyle),
          ],
        )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: _createButtons());
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(width: 10.0),
        FloatingActionButton(
          backgroundColor: Color.fromRGBO(400, 345, 222, 34),
          onPressed: _remove,
          child: Center(
            child: Icon(Icons.remove),
          ),
        ),
        SizedBox(width: 10.0),
        FloatingActionButton(
          backgroundColor: Color.fromRGBO(400, 345, 222, 34),
          onPressed: _add,
          child: Center(
            child: Icon(Icons.add),
          ),
        ),
        Expanded(child: SizedBox(width: 10.0)),
        FloatingActionButton(
          backgroundColor: Color.fromRGBO(400, 345, 222, 34),
          onPressed: _reset,
          child: Center(
            child: Icon(Icons.undo),
          ),
        ),
        SizedBox(width: 10.0),
      ],
    );
  }

  void _add() {
    setState(() => _counter++);
  }

  void _remove() {
    setState(() {
      if (_counter < 1) {
        return;
      }
      _counter--;
    });
  }

  void _reset() {
    setState(() => _counter = 0);
  }
}
