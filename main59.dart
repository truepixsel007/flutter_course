// creating a new custom widget

import 'package:flutter/material.dart';
import 'package:myproject/ui_helper/util.dart';
import 'package:myproject/widgets59/rounded_btn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 150,
              height: 50,
              child: RoundedButton(btnName: 'Play',
                  icon : Icon(Icons.play_arrow,color: Colors.white,),
                  callback: (){
                print('logged in!!');
                  },
                textStyle: mTextStyle21(),
              ),
            ),
          ),
          Container(height: 11,),
          Center(
            child: Container(
              width: 150,
              height: 50,
              child: RoundedButton(btnName: 'Press',
                icon : Icon(Icons.play_arrow,color: Colors.white,),
                callback: (){
                  print('Press!!');
                },
                bgColor: Colors.orange,
                textStyle: mTextStyle21(),
              ),
            ),
          ),
        ],
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
