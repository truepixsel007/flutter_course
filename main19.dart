//inkwell

//inkwell is the material widget in flutter
//it responds to the action as performed by the user
//inkwell will repond when the user click it/ tap on it
//there are so many gestures like double-tap long press, tap down, etc
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
      body:
          // ElevatedButton(
          //   child: Text('click me'),
          //   onPressed: (){
          //     print('clicked on button');
          //   },
          // ),

          Center(
              child: InkWell(
        onTap: () {
          print('Tapped on container');
        },
        onLongPress: () {
          print('long press on container');
        },
        onDoubleTap: () {
          print('double press on container');
        },
        child: Container(
          width: 200,
          height: 200,
          color: Colors.amber,
          child: Center(
              child: InkWell(
                onTap: (){
                  print('Text on tap');
                },
                child: Text(
            'click me',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
          ),
              ),
          ),
        ),
      ) // This trailing comma makes auto-formatting nicer for build methods.
              ),
    );
  }
}
