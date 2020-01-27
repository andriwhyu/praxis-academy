import 'package:flutter/material.dart';
import 'package:practice_1/services/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Sign In"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        child: RaisedButton(
          onPressed: () async {
            dynamic result = await _authService.signInAnon();
           
            if (result != null) {
              print("Login Success");
              print(result);
            } else {
              print("Unsuccessfull");
            }
          },
          child: Text("Sign In Anonymous"),
        ),
      ),
    );
  }
}