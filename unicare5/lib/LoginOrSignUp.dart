import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:unicare5/Boarding-1.dart';
import 'package:unicare5/Login_Screen.dart';
import 'package:unicare5/Sign%20UP.dart';
class LoginOrSignUp extends StatefulWidget {
  const LoginOrSignUp({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginOrSignUp> {
  int currentIndex= 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading:
        IconButton(
          icon: Icon(Icons.arrow_back,
            color: Colors.black,),
          onPressed: (){
            {
              if (currentIndex == 0) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Onbording(),
                  ),
                );
              }
              // _controller.nextPage(
              //   duration: Duration(milliseconds: 100),
              //   curve: Curves.bounceIn,
              // );
            };
          },

        ),


      ),
      backgroundColor: Colors.white,
      body:
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25,),
        child: Center(
          child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Image Doctor
              SvgPicture.asset('assets/images/Login/Doctors-cuate.svg',
              height: 300,
              ),
              SizedBox(height: 30,),
              //Title
              Text(
                'LOGIN OR SIGIN UP',
                style:
                  TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),
                ),
              SizedBox(height: 20,),
              Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                textAlign: TextAlign.center,

                style:
                TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey,
                ),
              ),

             SizedBox(height: 40,),

              // Sign IN Button
              SizedBox(height: 10,),
              // Login Button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12),
                  ),

                  child:

                  Center(
                   child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));


                      },

                      child: Text('Login', style: TextStyle(
                         color: Colors.white,
                         fontWeight: FontWeight.bold,
                         fontSize: 18,
                       ),
                    )


                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              // Sign Up Button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(12),

                  ),
                  child:
                  Center(
                    child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignUP()));


                        },

                        child: Text('Sign Up',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),


                    ),

                  ),
                ),
              ),




            ],
          ),
        ),
      ),

    );
  }
}
