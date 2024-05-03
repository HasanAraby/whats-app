import 'package:flutter/material.dart';
import 'package:whatsapp/Models/CallsModel.dart';
class CallsListTile extends StatelessWidget {

  CallsModel Calls;
  CallsListTile({this.Calls});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Icon(Icons.person),

      ),
      title: Text(Calls.title),
      subtitle: Row(
        children: [
          Text(Calls.subtitle),
          Connection(Calls.call, Calls.recieved)
        ],
      ),

      trailing: Text(Calls.time),

    );
  }

  Container Connection(bool x, bool y){
    if(x){
      if(y)
      {
        return Container(child: Icon(Icons.call_made_outlined,color: Colors.green));
      }
      else{
        return Container(child: Icon(Icons.call_made_outlined,color: Colors.black26));
      }
    }
    else{
      if(y)
      {
        return Container(child: Icon(Icons.call_received,color: Colors.green));
      }
      else{
        return Container(child: Icon(Icons.call_received,color: Colors.black26));
      }

    }
  }


}
