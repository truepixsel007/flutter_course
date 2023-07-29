// mapping  lists to widgets

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

  var arrData  = [
    {
      'name' : 'Raman',
      'mobile' : "987654321",
      'unread' : '3'
    },
    {
      'name' : 'Rahul',
      'mobile' : "987654321",
      'unread' : '5'
    },
    {
      'name' : 'Rajeev',
      'mobile' : "987654321",
      'unread' : '2'
    },
    {
      'name' : 'Raj',
      'mobile' : "987654321",
      'unread' : '1'
    },
    {
      'name' : 'Raman',
      'mobile' : "987654321",
      'unread' : '3'
    },
    {
      'name' : 'Rahul',
      'mobile' : "987654321",
      'unread' : '5'
    },
    {
      'name' : 'Rajeev',
      'mobile' : "987654321",
      'unread' : '2'
    },
    {
      'name' : 'Raj',
      'mobile' : "987654321",
      'unread' : '1'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Container(
          child: ListView(
              children: arrData.map((value) =>
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text(value['name'].toString()),
                subtitle: Text(value['mobile'].toString()),
                trailing: CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.green,
                    child: Text(value['unread'].toString())
                ),
              )
              ).toList(),


          ),
        )
    );
  }
}
