// foo animattion { Animated Container }

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
  var _width = 200.0;
  var _height = 100.0;

  bool flag = true;

  Decoration  myDecor = BoxDecoration(
    borderRadius: BorderRadius.circular(2),
    color: Colors.blueGrey
  );
  
  // Color bgColor = Colors.blueGrey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
                width: _width,
                height: _height,
                curve: Curves.fastLinearToSlowEaseIn,
                // color: bgColor,
              decoration: myDecor,
              duration: Duration(seconds: 2),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: (){
                  setState(() {
                    if(flag) {
                      _width = 100.0;
                      _height = 200.0;
                      myDecor = BoxDecoration(
                          borderRadius: BorderRadius.circular(21),
                        color: Colors.orange
                      );
                      flag = false;
                    }else{
                      _width = 200.0;
                      _height = 100.0;
                      myDecor = BoxDecoration(
                          borderRadius: BorderRadius.circular(21),
                        color: Colors.orange
                      );
                      flag = true;
                    }
                  });
                }, child: Text('Animate'))
          ],
        ),
      )
    );
  }
}
