import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'auth_check.dart';

class AuthProvider extends StatelessWidget {
  const AuthProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      initialData: null,
      builder: (c, user) => const AuthCheck(),
    );
  }
}
