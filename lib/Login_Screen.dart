import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


// import 'package:google_fonts/google_fonts.dart';


import 'package:unicare5/LoginOrSignUp.dart';
import 'package:unicare5/Sign%20UP.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  var instance;

  @override
  void dispose(){
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }
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
                    builder: (_) => LoginOrSignUp(),
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
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Image Doctor
                SvgPicture.asset('assets/images/Login/Tablet login-cuate.svg',
                  height: 300,
                ),
                SizedBox(height: 50,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                      child:   TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        onFieldSubmitted: (String value) {
                          print(value);
                        },
                        onChanged: (String value) {
                          print(value);
                        },
                        decoration: InputDecoration(
                          labelText: 'Email Address',
                          prefixIcon: Icon(
                            Icons.email,
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),

                ),
                SizedBox(height: 10,),

                // Password Textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:25),
                  child: Container(
                    child:   TextFormField(
                      controller: passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        onFieldSubmitted: (String value) {
                          print(value);
                        },
                        onChanged: (String value) {
                          print(value);
                        },
                        decoration: InputDecoration(
                          labelText: 'Password',
                          prefixIcon: Icon(
                            Icons.lock,
                          ),
                          suffixIcon: Icon(
                            Icons.remove_red_eye,
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                SizedBox(height: 20,),

                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(50),
                  ),
                  icon: Icon(Icons.lock_open,size: 32,),
                  label: Text(
                    'Sign In',
                    style: TextStyle(fontSize: 24),
                  ),
                  onPressed: signIn,
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 25),
                //   child: Container(
                //     padding: EdgeInsets.all(16),
                //     decoration: BoxDecoration(
                //       color: Colors.blue,
                //       borderRadius: BorderRadius.circular(12),
                //     ),
                //     child:
                //     Center(
                //       child:
                //       Text('Login',
                //         style: TextStyle(
                //           color: Colors.white,
                //           fontWeight: FontWeight.bold,
                //           fontSize: 18,
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                SizedBox(height: 20,),
                //Text: Sign UP
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Not yet a member?'),

                    GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignUP()));
                        },
                      child: Text(' Sign Up Now',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        )
                        ,),
                    ),
                  ],
                ),
                SizedBox(height: 70,),
              ],
            ),
          ),
        ),
      ),
    );
    }
  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text.trim(),
      password: passwordController.text.trim(),
    );
  }
  }




