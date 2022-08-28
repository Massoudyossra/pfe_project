import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pfe_project/Screens/main_screen.dart';
import 'package:provider/provider.dart';
import 'Screens/data_display.dart';

class AuthCheck extends StatelessWidget {
  const AuthCheck({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authUser = Provider.of<User?>(context);
    print(authUser);
    if (authUser == null) {
      return const MainScreen();
    } else {
      return DataDisplayScreen();
    }
  }
}
