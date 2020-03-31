import 'package:flutter/material.dart';
import 'package:mywhatsapp/model/chat.dart';
import '../reusable/Wcards.dart';
import 'Chat.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        WCards("My Status", "https://images.pexels.com/photos/1427288/pexels-photo-1427288.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500" , "Tap to add status"),
        Divider(),
        Heading("Recent updates"),
        WCards(messageData[2].name, messageData[3].imageUrl, messageData[1].time),
        WCards(messageData[5].name, messageData[5].imageUrl, messageData[5].time),
        WCards(messageData[3].name, messageData[4].imageUrl, messageData[3].time),
        Divider(),
        Heading("Viewed updates"),
        WCards(messageData[2].name, messageData[3].imageUrl, messageData[3].time),
        WCards(messageData[5].name, messageData[5].imageUrl, messageData[5].time),
        WCards(messageData[3].name, messageData[3].imageUrl, messageData[3].time),
      ],
    );
  }
}

class Heading extends StatelessWidget {
  final String heading;
  Heading(this.heading);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left:20.0, top:5.0),
        child: Text(
          heading,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
        ),
    );
  }
}