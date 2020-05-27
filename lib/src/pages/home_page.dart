import 'package:flutter/Material.dart';

class HomePage extends StatelessWidget {
  final TextStyle textStyle = new TextStyle(fontSize: 25);

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lucas App"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Numero de clicks:",
            style: textStyle,
          ),
          Text("0", style: textStyle),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Hola mundo");
        },
        child: Center(
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
