import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  final _auth = FirebaseAuth.instance;

  Future<UserCredential> signUp(String email, String password) async {
    final UserCredential = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);

    return UserCredential;
  }

  Future<UserCredential> signIn(String email, String password) async {
    final UserCredential = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    return UserCredential;
  }

  Future<User> getUser() async {
    return _auth.currentUser;
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }
}
