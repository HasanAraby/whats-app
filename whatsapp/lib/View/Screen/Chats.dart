import 'package:flutter/material.dart';
import 'file:///G:/Flutter/whatsapp/lib/View/Widget/VarListTile.dart';
import 'package:whatsapp/Models/ChatsModel.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {

  List<ChatsModel>chats=[
    ChatsModel(title: 'Ahmed',subTitle: 'Fci',time: '6:00',isRead: true,isGroup: true),
    ChatsModel(title: 'Ahmed',subTitle: 'Fci',time: '6:00',isRead: true,isGroup: false),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount:2,
        itemBuilder: (context,index)

            {
             return VarListTile(chatsModel: chats[index],);
            }


    );
  }
}


