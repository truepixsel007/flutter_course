//columns and rows

// one of the most common layout patterns is to arrange widget vertically or horizontally
//you can use a row widget to arrange widget horizontally and a column widget to arrange widget vertically
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
      debugShowCheckedModeBanner: false,
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
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: Container(
          height: 900,
          width: 500,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          'r1',
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.blue,
                              backgroundColor: Colors.pink),
                        ),
                      ),
                      Text(
                        'r2',
                        style: TextStyle(fontSize: 22),
                      ),
                      Text(
                        'r3',
                        style: TextStyle(fontSize: 22),
                      ),
                      Text(
                        'r4',
                        style: TextStyle(fontSize: 22),
                      ),
                      Text(
                        'r5',
                        style: TextStyle(fontSize: 22),
                      ),
                    ],
                  ),
                  Container(
                      width: 150,
                      height: 400,
                      color: Colors.orange,
                      child: Image.asset('assets/images/w1.jpeg')),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(11),
                        child: Text(
                          'i am arshdeep singh',
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.blue,
                              backgroundColor: Colors.pink),
                        ),
                      ),
                      Text(
                        'r2',
                        style: TextStyle(fontSize: 22),
                      ),
                      Text(
                        'r3',
                        style: TextStyle(fontSize: 22),
                      ),
                      Text(
                        'r4',
                        style: TextStyle(fontSize: 22),
                      ),
                      Text(
                        'r5',
                        style: TextStyle(fontSize: 22),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child:   Container(
                            width: 150,
                            height: 200,
                            color: Colors.orange,
                            child: Image.asset('assets/images/w1.jpeg')),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        )
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
