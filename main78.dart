// bmi app
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
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();
  var result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('BMI',style: TextStyle(fontSize: 34,fontWeight: FontWeight.w500),),

              TextField(
                controller: wtController,
                decoration: InputDecoration(
                  label: Text('Enter your Weight (in kgs)'),
                  prefixIcon: Icon(Icons.line_weight),
                ),
                keyboardType: TextInputType.number,
              ),

              SizedBox(height: 21,),

              TextField(
                controller: ftController,
                decoration: InputDecoration(
                  label: Text('Enter your Height (in feet)'),
                  prefixIcon: Icon(Icons.line_weight),
                ),
                keyboardType: TextInputType.number,
              ),

              SizedBox(height: 11,),

              TextField(
                controller: inController,
                decoration: InputDecoration(
                  label: Text('Enter your Height (in Inch)'),
                  prefixIcon: Icon(Icons.line_weight),
                ),
                keyboardType: TextInputType.number,
              ),

              SizedBox(height: 11,),

             ElevatedButton(
                 style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                 onPressed: (){
                   var wt = wtController.text.toString();
                   var ft = ftController.text.toString();
                   var inch = inController.text.toString();

                   if(wt!= "" && ft!="" && inch!=""){
                        var iWt = int.parse(wt);
                        var iFt = int.parse(ft);
                        var iInch = int.parse(inch);

                        var  tInch = (iFt*12) + iInch;

                        var tCm = tInch*2.54;

                        var tM = tCm/100;

                        var bmi = iWt/(tM*tM);

                        setState(() {
                          result = "Your BMI is ${bmi.toStringAsFixed(2)}";
                        });

                      }else{
                    setState(() {
                   result = "Please fill all the required blanks!!";
                  });
                   }
                 },
                 child: Text('Calculate',style: TextStyle(color: Colors.white),)),

              Text(result, style: TextStyle(fontSize: 19),),


            ],
          ),
        ),
      )
    );
  }
}
