// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:unicare5/HomeScreen.dart';
import 'package:unicare5/Login_Screen.dart';
import 'package:unicare5/Splash.dart';


Future<void> main() async {  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: Colors.transparent)
      );
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:SplashScreen()
      // HomeScreen()
    );
  }
}

class MainPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) => Scaffold(
    body:  StreamBuilder<User?>(
      // stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
           if (snapshot.hasData) {
          return HomeScreen();
        } else {
          return LoginScreen();
        }
      }
      ),
  );
}