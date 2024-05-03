import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp/Models/ChatsModel.dart';
class VarListTile extends StatefulWidget{
  ChatsModel chatsModel;
  VarListTile({this.chatsModel});

  @override
  _VarListTileState createState() => _VarListTileState();
}

class _VarListTileState extends State<VarListTile> {
  @override

  Widget build(BuildContext context) {
    return ListTile(

      leading: CircleAvatar(
        backgroundColor: Colors.grey,
        radius: 30,
        child: widget.chatsModel.isGroup ? SvgPicture.asset('assets/images/groups_black_24dp.svg',color: Colors.blue)
            : SvgPicture.asset('assets/images/person_black_24dp.svg',color: Colors.blue),
      ),
      title: Text(widget.chatsModel.title),
      subtitle: Row(children: [

        Icon(widget.chatsModel.isRead ? Icons.done_all : Icons.check),


        Text(widget.chatsModel.subTitle),
      ],),

      trailing: Text(widget.chatsModel.time),


    );
  }
}
