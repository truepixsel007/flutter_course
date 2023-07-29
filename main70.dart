

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage>{
  var count = 0;
  @override
  Widget build(BuildContext context) {
      return Scaffold(
         appBar: AppBar(
           title: Text('Stateful'),
         ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Count : $count',style: TextStyle(fontSize: 34),),
              ElevatedButton(onPressed: (){
              //  count = count + 1;
              //   count +=1;
               count++;
               print(count);
               setState(() {
               });
              },
                  child: Text('Increament Count')
              ),
            ],
          ),
        ),
      );
  }

}