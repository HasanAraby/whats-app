import 'package:flutter/material.dart';


class Sign extends StatefulWidget {

  @override
  _SignState createState() => _SignState();
}

class _SignState extends State<Sign> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
         mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Data('Email'),
            Data('Password'),
            

          ],



        ),
      ),
    );
  }
}

class Data extends StatefulWidget {
  String name;
  Data(this.name);
  @override
  _DataState createState() => _DataState();
}

class _DataState extends State<Data> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(widget.name),

        TextFormField(),
        SizedBox(height: 10,),
      ],
    );
  }
}
