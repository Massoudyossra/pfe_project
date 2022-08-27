
import 'package:flutter/material.dart';
import 'package:pfe_project/Screens/Welcome_screen.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
  body: SafeArea(
    child:Container(
      // we will give media querry height
      //double.infinity make it big as my parents allows
      // while Mediaquerry make it big as per the screen
    width: double.infinity,
    height: MediaQuery.of(context).size.height,
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
    child: Column(
    // even space distribution 
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                        Column(
                          children: [
                             Text(" Smart supervisor system  " , style:TextStyle(
                                fontWeight: FontWeight.bold,
                                    fontSize: 30,

                                      ),
    
                                               ),
                                               SizedBox(
                                                height: 20 ,
                                               ),
                                               Text(" Powered by MASSOUD YOSRA  ", textAlign: TextAlign.center,
                                               style: TextStyle(
                                              color: Colors.grey[700],
                                              fontSize: 18,

                                               ),)
                                               
                             ],
                          ),
                          Container(
                          height: MediaQuery.of(context).size.height/3,
                          decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/images/main.png")
                          )
                          ),
                          ),
                          Column(
                          children: [
                            // the login button 
                           SizedBox( height: 20,),
                           MaterialButton(
                           minWidth: double.infinity,
                           height: 60,
                           onPressed: (){
                           Navigator.push(context,MaterialPageRoute(builder:(context) => WelcomeScreen()));
                           },
                           color: Color(0xff0095FF),
                           // defining the shape
                           shape: RoundedRectangleBorder(
                      
                           borderRadius: BorderRadius.circular(50)
                           ),
                           child: Text("Get Started", style: TextStyle(color:Colors.white ,
                           fontWeight: FontWeight.w600,
                           fontSize: 18,
                           ),
                           ),
                           ),
                         
                          

                          ],
                          )

                        ],
             ),
           ) , 
    ),

  ) ;
  }
}