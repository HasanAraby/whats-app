import 'package:flutter/material.dart';
import 'package:whatsapp/Models/CallsModel.dart';
import '../Widget/CallsListTile.dart';

class Calls extends StatefulWidget {
  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {

  List<CallsModel>clist=[
    CallsModel(time: '6:00',title: 'Hassan',subtitle: 'Call Me',call: true,recieved: true),
    CallsModel(time: '6:00',title: 'Hassan',subtitle: 'Call Me',call: true,recieved: false),
    CallsModel(time: '6:00',title: 'Hassan',subtitle: 'Call Me',call: false,recieved: true),
    CallsModel(time: '6:00',title: 'Hassan',subtitle: 'Call Me',call: false,recieved: false),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: clist.length,
        itemBuilder: (context,index)
            {
              return CallsListTile(Calls: clist[index],);
            }

    );
  }
}
