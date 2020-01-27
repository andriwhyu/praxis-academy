import 'package:authentification_firebase/pages/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email, _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Tutorial"),
      ),
      // TODO: make form
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                validator: (input) {
                  if (input.isEmpty) return "This field is required";
                },
                onSaved: (input) => _email = input,
                decoration: InputDecoration(labelText: "Email"),
              ),
              TextFormField(
                validator: (input) {
                  if (input.isEmpty)
                    return "This field is required";
                  else if (input.length < 6)
                    return "Your password length must at least 6 characters";
                },
                onSaved: (input) => _password = input,
                decoration: InputDecoration(labelText: "Password"),
                obscureText: true,
              ),
              RaisedButton(
                onPressed: signIn,
                child: Text("Sign In"),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> signIn() async {
    final _formState = _formKey.currentState;
    if (_formState.validate()) {
      _formState.save();
      try {
        print("ap");
        AuthResult user = await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password);
        FirebaseUser us = user.user;
        print(us);
      } catch (e) {
        print("Error: ${e.message}");
      }
    }
  }
}
