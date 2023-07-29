// Ripple Effect animation

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

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{

  late Animation _animation;
  late AnimationController  _animationControllertroller;

  var listRadius = [150.0, 200.0, 250.0, 300.0, 350.0];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _animationControllertroller = AnimationController(vsync: this, duration: Duration(seconds: 4), lowerBound: 0.5);
    _animation = Tween(begin: 0.0,end: 1.0).animate(_animationControllertroller);

    _animationControllertroller.addListener(() {
setState(() {

});
    });

    _animationControllertroller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body:Center(
          child: Stack(
            alignment: Alignment.center,
            children:
            listRadius.map((radius) =>
            Container(
              width: radius*_animation.value,
              height: radius*_animation.value,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue.withOpacity(1.0 - _animation.value),
              ),
            )).toList()
          ),
      )
    );
  }
}