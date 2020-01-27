import 'package:flutter/material.dart';
import 'package:practice_1/screens/wrapper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),
      home: Wrapper(),
    );
  }
}
