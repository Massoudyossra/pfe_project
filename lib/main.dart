
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pfe_project/Screens/Main_Screen.dart';
import 'package:pfe_project/Screens/Welcome_screen.dart';
import 'package:pfe_project/Screens/signup.dart';
import 'package:pfe_project/Screens/login.dart';
      
void main() async{
 WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp(options: const FirebaseOptions(apiKey: 'AIzaSyDSPw-Pp9-XS9wZ-T96QU-s8vfLocDUsZM'
,
       appId:'com.example.pfe_project',
        messagingSenderId: '178535045150',
         projectId: 'raspberry-pi-69f13'
));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PFE APP',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
      
    );
  }
}


  

    
      