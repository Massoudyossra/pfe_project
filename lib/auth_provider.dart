import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'auth_check.dart';



class AuthProvider extends StatelessWidget {
  const AuthProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamProvider<User?>.value(
      initialData: null,
      value: FirebaseAuth.instance.authStateChanges(),
      child: const  AuthCheck(),
    );
  }
}