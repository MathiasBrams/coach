import 'package:flutter/material.dart';
import 'package:mentusa/common_widgets/chat_card.dart';
import 'package:mentusa/common_widgets/chat_message_other.dart';
import 'package:mentusa/common_widgets/chat_message_user.dart';
import 'package:mentusa/common_widgets/type_box.dart';
import 'package:mentusa/constants/constants.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: kTextColor,
            title: Row(children: [
              CircleAvatar(backgroundImage: AssetImage('assets/images/profiles/businessman.jpg')),
              SizedBox(width: 10),
              Text('Lars bo'),
            ]),
            actions: [
              Icon(Icons.call, size: 30),
              SizedBox(width: 20),
              Icon(Icons.video_call, size: 30),
              SizedBox(width: 10),
              Icon(Icons.more_vert, size: 30),
              SizedBox(width: 10),

            ],
          ),
          persistentFooterButtons: [
            IconButton(
                icon: Icon(Icons.sentiment_very_satisfied_outlined),
                onPressed: null),
            TypeBox(),
            Row(children: [
              IconButton(icon: Icon(Icons.attach_file), onPressed: null),
              IconButton(icon: Icon(Icons.camera), onPressed: null),
            ],),
            
            IconButton(
                icon: Icon(Icons.send, color: kTextColor), onPressed: null)
          ],
          body: ListView(
            children: <Widget>[
              Text('Monday 8:12', textAlign: TextAlign.center),
              ChatMessageUser(message: 'Hi Mathias!'),
              ChatMessageUser(message: 'Thanks for the call. I really look forward to our partnership'),
              ChatMessageOther(message: "Likewise Lars. I'll try to implement your suggestions and then we'll talk next week!"),
              ChatMessageUser(message: 'Perfect. Once you are ready then invite me to a call'),
            ],
          )),
    );
  }
}

