// card widget

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      body: Center(
        child: Column(
          children: [
            Card(
              shadowColor: Colors.blue,
              elevation: 20,
                child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Hello world!', style: TextStyle(fontSize: 22),),
                ),
            ),
              Row(
               children: [
                 Card(
                   shadowColor: Colors.black,
                   elevation: 20,
                   child: Row(
                     children: [
                       Container(
                         width: 70,
                           height: 70,
                           child:
                           Image.asset('assets/images/bg-1.jpg'),
                       ),
                       Container(
                         width: 70,
                           height: 80,
                               child: Column(
                                 children: [
                                   Padding(
                                     padding: const EdgeInsets.only(top: 3,left: 0,right: 5,),
                                     child: Text('Apna Dhaba',style: TextStyle(fontSize: 6),),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.only(top: 3,left: 0,right: 5),
                                     child: Text('Apna Dhaba',style: TextStyle(fontSize: 6),),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.only(top: 27,right: 5,left: 0),
                                     child: Text('Apna Dhaba',style: TextStyle(fontSize: 6),),
                                   ),
                                 ],
                               ),
                       ),
                     ],
                   ),
                 ),

               ],
             ),
            
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
