// gridview in flutter

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

  @override
  Widget build(BuildContext context) {

    var arrColors = [Colors.amber,
      Colors.orange,
      Colors.grey,
      Colors.blue,
      Colors.pink,
      Colors.green,
      Colors.pinkAccent,
      Colors.brown];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: GridView.extent(
                // crossAxisCount:2,
                maxCrossAxisExtent: 100,
                crossAxisSpacing: 11,
                mainAxisSpacing: 11,
                children: [
                  Container(
                    color: arrColors[0],
                  ),
                  Container(
                    color: arrColors[1],
                  ),
                  Container(
                    color: arrColors[2],
                  ),
                  Container(
                    color: arrColors[3],
                  ),
                  Container(
                    color: arrColors[4],
                  ),
                  Container(
                    color: arrColors[5],
                  ),
                  Container(
                    color: arrColors[6],
                  ),
                  Container(
                    color: arrColors[7],
                  ),
                ],
              ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
