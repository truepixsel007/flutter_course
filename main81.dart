import 'dart:async';

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
  bool isFirst = true;

  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 4), () {
      reload();
    });
  }
  void reload(){
    setState(() {
      if(isFirst) {
        isFirst = false;
      }else{
        isFirst = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
              duration: Duration(seconds: 2),
              firstChild: Container(
                width: 200,
                height: 200,
                color: Colors.grey.shade400,
              ),
              secondChild: Image.asset('assets/images/logo.png',
              width: 200,height: 200,
              ),
              sizeCurve: Curves.fastLinearToSlowEaseIn,
              firstCurve: Curves.easeInOut,
              secondCurve: Curves.bounceInOut,
              crossFadeState: isFirst ?  CrossFadeState.showFirst:CrossFadeState.showSecond,
            ),

            ElevatedButton(
                onPressed: (){
                 reload();
                },
                child:Text('show')
            )
          ],
        ),
      )
    );
  }
}
