import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:unicare5/LoginOrSignUp.dart';
class SignUP extends StatefulWidget {
  const SignUP({Key? key}) : super(key: key);

  @override
  _SignUP createState() => _SignUP();
}

class _SignUP extends State<SignUP> {
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
        actions: [
          // IconButton(
          //   icon: Icon(Icons.arrow_forward_rounded,
          //     color: Colors.black,),
          //   onPressed: (){
          //     {
          //       if (currentIndex == 0) {
          //         Navigator.pushReplacement(
          //           context,
          //           MaterialPageRoute(
          //             builder: (_) => (),
          //           ),
          //         );
          //       }
          //       // _controller.nextPage(
          //       //   duration: Duration(milliseconds: 100),
          //       //   curve: Curves.bounceIn,
          //       // );
          //     };
          //   },
          //
          // ),

        ],

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
                SvgPicture.asset('assets/images/Login/Sign up-rafiki.svg',
                  height: 300,
                ),
                // First Name Text
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    child:   TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      onFieldSubmitted: (String value) {
                        print(value);
                      },
                      onChanged: (String value) {
                        print(value);
                      },
                      decoration: InputDecoration(
                        labelText: 'First Name',
                        prefixIcon: Icon(
                          Icons.perm_identity_outlined ,
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),

                ),
                SizedBox(height: 10,),

                // Last Name Text
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:25),
                  child: Container(
                    child:   TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      onFieldSubmitted: (String value) {
                        print(value);
                      },
                      onChanged: (String value) {
                        print(value);
                      },
                      decoration: InputDecoration(
                        labelText: 'Last Name',
                        prefixIcon: Icon(
                          Icons.perm_identity_outlined ,
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),

                //Email Address
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    child:   TextFormField(
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


                //Sign Up Button
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
                SizedBox(height: 10,),


                //Text: Sign UP
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Alredady a member?'),
                    Text(' Login',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      )
                      ,),
                  ],
                ),
                SizedBox(height: 20),


              ],
            ),
          ),
        ),
      ),

    );
  }
}
