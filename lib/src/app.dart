// import 'package:contador/src/pages/home_page.dart';
import 'package:flutter/material.dart';

import 'pages/counter_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    // return MaterialApp(home: Center(child: HomePage()));
    return MaterialApp(
      home: CounterPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
