import 'package:flutter/Material.dart';

class HomePage extends StatelessWidget {
  final TextStyle textStyle = new TextStyle(fontSize: 25);

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
            style: textStyle,
          ),
          Text("0", style: textStyle),
        ],
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(400, 345, 222, 34),
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
