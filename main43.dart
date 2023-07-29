// flutter style and themes

import 'package:flutter/material.dart';
import 'package:myproject/ui_helper/util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 21, fontWeight:  FontWeight.bold),
          subtitle1: TextStyle(fontSize: 31 , fontStyle: FontStyle.italic),
        ),
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
          children: [
            Text('Text 1', style: Theme.of(context).textTheme.headline1!.copyWith(color:Colors.green),),
            Text('Text 2', style: mTextStyle31(),),
            Text('Text 3', style: mTextStyle21(),),
            Text('Text 4', style: mTextStyle11(textColor: Colors.blue),),
          ],
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
