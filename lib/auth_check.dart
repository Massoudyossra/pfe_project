import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screens/Main_Screen.dart';
import 'affichage.dart';

class AuthCheck extends StatelessWidget {
  const AuthCheck({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authUser = Provider.of<User?>(context);

    if (authUser == null) {
      return const MainScreen();
    } else {
      return const DisplayScreen();
    }
  }
}
