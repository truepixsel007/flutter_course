// shared pref

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

  var nameController = TextEditingController();

  static const String KEYNAME = "name";
  var nameValue = "No value saved";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  getValue();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             TextField(
               decoration: InputDecoration(
                 label: Text('Name'),
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(21)
                 )
               ),
             ),
             SizedBox(height: 11,),
             ElevatedButton(onPressed: () async {
               var name = nameController.text.toString();

               var prefs = await  SharedPreferences.getInstance();

               prefs.setString(KEYNAME, nameController.text.toString());
             }, child: Text('save')),
             SizedBox(height: 11,),
             Text(nameValue),
           ],
         ),
      )
    );
  }

  void getValue() async  {
    var prefs = await  SharedPreferences.getInstance();
   var getName = prefs.setString(KEYNAME);

    nameValue = getName !=null ? getName: "No Value Saved";
    setState(() {

    });
  }
}

class SharedPreferences {
  static getInstance() {}
}
