import 'package:flutter/Material.dart';

class HomePage extends StatelessWidget {
  final TextStyle textStyle = new TextStyle(fontSize: 25);

  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(183, 245, 245, 34),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(33, 176, 176, 2),
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
