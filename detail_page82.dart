
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myproject/main82.dart';

class DetailPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
      ),
      body: Container(
        child: Hero(
          tag: 'background',
          child: Image.asset('assets/images/w1.jpeg'),
        ),
      ),
    );
  }
}