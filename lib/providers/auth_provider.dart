import 'package:firebase_auth/firebase_auth.dart';

class AuthProvider {
  // FirebaseAuth
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<bool> login(String email, String password) async {
    String? errorMessage;
    try {
      await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (error) {
      errorMessage = error.code;
    }

    if (errorMessage != null) {
      throw errorMessage;
    }
    return true;
  }
}