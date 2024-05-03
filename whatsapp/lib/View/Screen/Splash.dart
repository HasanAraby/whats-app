import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///G:/Flutter/whatsapp/lib/View/Screen/Introduction.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Splash extends StatefulWidget {


  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 6),
        (){
      Navigator.pushNamed(context, Introduction.id);
        }
    );
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Center(
        child: Column(
          children: [

            SizedBox(height: 300,),
            Container(

                height: 80,
                width: 80,
              child: SvgPicture.asset('assets/images/whatsapp_black_24dp.svg',fit: BoxFit.fill,color: Colors.green,)
      ),


            Text('W H A T S A P P',
              style: TextStyle(
                fontSize: 39,
                color: Colors.green,
                fontWeight: FontWeight.w900
              ),)

          ],
        ),
      ),

    );
  }
}
