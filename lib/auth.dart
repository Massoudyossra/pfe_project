import 'package:firebase_auth/firebase_auth.dart';
import'package:flutter/material.dart';

class AuthService {
final FirebaseAuth  _auth=FirebaseAuth.instance;


  //auth change stream
  Stream<User?> get user {
    return _auth.authStateChanges();
  }
   //Sign in with email and password
  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      return user;
    } catch (e) {
      rethrow;
    }
  }
  // Sign up with email and password  
  Future signUpWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
     
      signInWithEmailAndPassword(email, password);
    } catch (e) {
      rethrow;
    }
  }


}