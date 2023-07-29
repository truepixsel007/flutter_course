// listView and its components

//listView in flutter is a widget used to display items in a linear  manner
//for example, list view is used in apps like zomato and swigy to display a list of restaurants
//since it a scrollable widget we can display multile items on thhe same screen
//if the scroll direction is vertical the children will be arranged one after another from top to bottom
//when the scroll direction is horizontal the children will be arranged from  left to right
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

    var arrNames = [ 'raman', 'ramanujan', 'rajesh', 'james', ' john', ' rohim', 'ram'];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: ListView.separated(itemBuilder:(context, index) {
          return Row(
            children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(arrNames[index], style: TextStyle(fontWeight: FontWeight.w500,fontSize: 21),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(arrNames[index], style: TextStyle(fontWeight: FontWeight.w500,fontSize: 11),),
                  ),
                ],
              ),
            ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(arrNames[index], style: TextStyle(fontWeight: FontWeight.w500,fontSize: 31),),
              )
            ],
          );
        },
          itemCount: arrNames.length,
          separatorBuilder: ( context, index){
            // ignore: prefer_const_constructors
            return Divider(height: 100, thickness: 2,color: Colors.red,);
          },
          // reverse: true,
        )

    );
  }
}
