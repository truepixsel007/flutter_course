
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myproject/main74.dart';

class IntroPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text('Intro'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('welcome',style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
            ),
            ),

             SizedBox(
               height: 11,
             ),

              ElevatedButton(
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyHomePage2(),
                      ));
                },child: Text('Next'),
            ),
          ],
        ),
      ),
    ) ;
  }
}