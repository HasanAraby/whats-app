import 'package:flutter/material.dart';
import 'file:///G:/Flutter/whatsapp/lib/View/Screen/Home.dart';

class Introduction extends StatefulWidget {
  static String id='Introduction';


  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 180,),
            Text('This Is A Chat Application',
            style: TextStyle(
              fontSize: 39,
              color: Colors.blue,

            ),),

            SizedBox(height: 180,),

            InkWell(
              child: Container(
                  color: Colors.blue,
                  child: Text('Home',style: TextStyle(fontSize: 30,color: Colors.white),)),
              onTap: (){
                Navigator.pushNamed(context, Home.id);
              },
            )
          ],


        ),


      ),
    );
  }
}
