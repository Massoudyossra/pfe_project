
import 'package:flutter/material.dart';
import 'package:pfe_project/Screens/Signup.dart';
import 'package:pfe_project/Screens/login.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

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
                             Text(" Hello , Yosra " , style:TextStyle(
                                fontWeight: FontWeight.bold,
                                    fontSize: 30,

                                      ),
    
                                               ),
                                               SizedBox(
                                                height: 20 ,
                                               ),
                                               Text("Welcome to your PFE application ", textAlign: TextAlign.center,
                                               style: TextStyle(
                                              color: Colors.grey[700],
                                              fontSize: 15,

                                               ),)
                                      
                             ],
                          ),
                          Container(
                          height: MediaQuery.of(context).size.height/3,
                          decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/images/welcome.png")
                          )
                          ),
                          ),
                          Column(
                          children: [
                            // the login button 
                           MaterialButton(
                           minWidth: double.infinity,
                           height: 60,
                           onPressed: (){
                           Navigator.push(context,MaterialPageRoute(builder:(context) => LoginScreen()));
                           },
                           // defining the shape
                           shape: RoundedRectangleBorder(
                           side: BorderSide(
                           color: Colors.black,
                           ),
                           borderRadius: BorderRadius.circular(50)
                           ),
                           child: Text("Login", style: TextStyle(
                           fontWeight: FontWeight.w600,
                           fontSize: 18,
                           ),
                           ),
                           ),
                           // creating the sign up button 
                          SizedBox(height: 20,),
                          MaterialButton(
                          minWidth:double.infinity,
                          height: 60,
                          onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));
                          },
                          color: Color(0xff0095FF),
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)
                          ),
                          child: Text
                          (" Sign Up ",style: TextStyle(color:Colors.white,fontWeight: FontWeight.w600,fontSize: 18,),),
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