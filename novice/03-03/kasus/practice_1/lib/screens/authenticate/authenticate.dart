import 'package:flutter/material.dart';
import 'package:practice_1/screens/authenticate/sign_in.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text("Authenticate"),
    //   ),
    // );
    return SignIn();
  }
}
