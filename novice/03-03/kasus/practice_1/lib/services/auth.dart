import 'package:firebase_auth/firebase_auth.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // TODO: sign in anonymously
  Future signInAnon() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      print(user);
      
      return user;
    } catch (e) {
      print(e.message);
      return null;
    }
  }

  // TODO: sign in with email and passsword
   
}