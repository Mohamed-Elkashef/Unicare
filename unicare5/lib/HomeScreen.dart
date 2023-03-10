import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

   return Scaffold(
     //backgroundColor: Colors.lightBlue,
     appBar: AppBar(
      // backgroundColor: Colors.lightBlue,
       elevation: 0,
       centerTitle: true,
       leading:
       IconButton(
         icon: Icon(Icons.menu),
         onPressed: ()
         {
           print('Menu Cleacked');
         },
       ),

       title: Text(
           'UniCare'),
       actions: [
         IconButton(
           onPressed: ()
           {
             print('Search Cleacked');
           }, icon: Icon(
           Icons.search,
         ),
         ),

         IconButton(onPressed: ()
         {
           print('Notification Cleacke');
         },
           icon: Icon(
           Icons.notification_important,
         ),
         ),
       ],

     ),
    body: Padding(
      padding: EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Signed In As',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 8,),
          Text(
            user.email!,
            style: TextStyle(fontSize: 20, fontWeight:FontWeight.bold ),
          ),
          SizedBox(height: 40,),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              minimumSize: Size.fromHeight(50),
            ),
              icon: Icon(Icons.arrow_back,size: 32,),
              label: Text(
                'Sign Out',
                style: TextStyle(fontSize: 24),
              ),
              onPressed:() => FirebaseAuth.instance.signOut(),
              )
        ],
      ),

    ),

   );
  }

}