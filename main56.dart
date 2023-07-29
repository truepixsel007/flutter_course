// splitting the app into widgets

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
      debugShowCheckedModeBanner: false ,
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
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Container(
          child: Column(
            children: [
              CatItems(),
              Contact(),
              SubCatItems(),
             BottomMenu(),
            ],
          ),
        )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


class CatItems extends StatelessWidget{
@override
Widget build(BuildContext context){
return    Expanded(
flex: 1,
child: Container(
color: Colors.blue,
child: ListView.builder(itemBuilder: (context, index) =>
Padding(
padding: const EdgeInsets.all(8.0),
child: SizedBox(
width:100,
child: CircleAvatar(
backgroundColor: Colors.green,
),
),
),
itemCount: 10,scrollDirection: Axis.horizontal,
),
),
);
}
}
class Contact extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return   Expanded(
      flex: 2,
      child: Container(
        color: Colors.orange,
        child: ListView.builder(itemBuilder: (context, index) =>
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                ),
                title: Text('Name'),
                subtitle: Text('Mob No'),
                trailing: Icon(Icons.delete),
              ),
            )
        ),
      ),
    );
  }
}
class SubCatItems extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return   Expanded(
      flex: 2,
      child: Container(
        color: Colors.green,
        child: ListView.builder(itemBuilder: (context, index) =>
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.blue,
                ),
              ),
            ),
          itemCount: 10,scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
class BottomMenu extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return  Expanded(
      flex: 1,
      child: Container(
        color: Colors.grey,
        child: GridView.count(crossAxisCount: 4,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.blue,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.blue,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.blue,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

