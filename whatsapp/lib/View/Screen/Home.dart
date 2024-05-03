import 'package:flutter/material.dart';
import 'file:///G:/Flutter/whatsapp/lib/View/Screen/Chats.dart';
import 'Calls.dart';

class Home extends StatefulWidget {
  static String id='Home';
  @override
  _WhatsAppState createState() => _WhatsAppState();
}

class _WhatsAppState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length:4 ,
        initialIndex: 1,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.teal,
              title: Text('WhatsApp'),
              actions: [
                Icon(Icons.search),
                PopupMenuButton(
                    itemBuilder: (context)
                    {
                      return [
                        PopupMenuItem(child: Text('New Group')),
                        PopupMenuItem(child: Text('Settings'))
                      ];
                    }
                )
              ],
              bottom: TabBar(
                indicatorColor: Colors.white,
                labelColor: Colors.white,
                tabs: [
                  Icon(Icons.camera),
                  Text('Chats'),
                  Text('Calls'),
                  Text('Status'),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                Icon(Icons.camera),
                Chats(),
                Calls(),
                Text('Status'),
              ],
            )
        ),
      ),

    );
  }
}
