//update correctly with stateful widget 

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
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
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();
  var result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
            color: Colors.blue.shade100,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      controller: no1Controller,
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      controller: no2Controller,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(onPressed: (){
                            var no1 = int.parse(no1Controller.text.toString());
                            var no2 = int.parse(no2Controller.text.toString());

                            var sum = no1+ no2;

                            result = "The sum of $no1 and $no2 is $sum";
                            setState(() {

                            });

                          }, child: Text('Add')),

                          ElevatedButton(onPressed: (){
                            var no1 = int.parse(no1Controller.text.toString());
                            var no2 = int.parse(no2Controller.text.toString());

                            var diff = no1- no2;

                            result = "The diffenence between  $no1 and $no2 is $diff";
                            setState(() {

                            });
                          }, child: Text('Sub')),

                          ElevatedButton(onPressed: (){
                            var no1 = int.parse(no1Controller.text.toString());
                            var no2 = int.parse(no2Controller.text.toString());

                            var mul = no1 * no2;

                            result = "The product of $no1 and $no2 is ${mul.toStringAsFixed(2)}";                            setState(() {

                            });
                          }, child: Text('Mul')),

                          ElevatedButton(onPressed: (){
                            var no1 = int.parse(no1Controller.text.toString());
                            var no2 = int.parse(no2Controller.text.toString());

                            var div = no1 / no2;

                            result = "The $no1 can be divided by $no2 is ${div.toStringAsFixed(2)}";
                            setState(() {

                            });
                          }, child: Text('Div')),
                        ],
                      ),
                    ),

                    Padding(padding: EdgeInsets.all(21), child: Text('Result $result',style: TextStyle(fontSize:25),),),
                    
                  ],
                ),
              ),
            ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
