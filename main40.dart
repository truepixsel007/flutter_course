//circle avatar
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
          child: CircleAvatar(
            child: Container(
              width: 50,
              height: 60,
              child: Column(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    child: Image.asset('assets/images/logo.png'),
                  ),
                  Text('Name'),
                ],
              ),
            ),
            backgroundColor: Colors.green,
            maxRadius:70,
            // backgroundColor: Colors.transparent,
            // radius: 200,
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
