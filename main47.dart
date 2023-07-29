// how  to format a date

// how  to get current date and time in flutter

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    //current time
    var time = DateTime.now();

    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(11),
          width: 200,
          height: 900,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text('Current Time:${DateFormat().format(time)}',style: TextStyle(fontSize: 25),),
                Text('Current Time:${DateFormat('Hms').format(time)}',style: TextStyle(fontSize: 25),),
                Text('Current Time:${DateFormat('jms').format(time)}',style: TextStyle(fontSize: 25),),
                Text('Current Time:${DateFormat('yMMMMd').format(time)}',style: TextStyle(fontSize: 25),),
                Text('Current Time:${DateFormat('QQQQ').format(time)}',style: TextStyle(fontSize: 25),),
                Text('Current Time:${DateFormat('yMMMMEEEEd').format(time)}',style: TextStyle(fontSize: 25),),
                Text('Current Time:${DateFormat('EEEE').format(time)}',style: TextStyle(fontSize: 25),),
                Text('Current Time:${DateFormat('MMMM').format(time)}',style: TextStyle(fontSize: 25),),
                ElevatedButton(onPressed: (){
                  setState(() {

                  });
                }, child: Text('Current Time'))
              ],
            ),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
