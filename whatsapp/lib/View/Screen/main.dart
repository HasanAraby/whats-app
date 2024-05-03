import 'package:flutter/gestures.dart';

import 'Splash.dart';
import 'package:flutter/material.dart';
import 'Home.dart';
import 'Introduction.dart';
void main(){
  runApp(WhatsApp());
}

class WhatsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Splash(),
      routes: {
        'Splash':(context)=>Splash(),
        Introduction.id:(context)=>Introduction(),
        Home.id:(context)=>Home(),
      },

    );
  }
}


