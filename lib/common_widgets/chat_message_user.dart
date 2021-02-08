import 'package:flutter/material.dart';
import 'package:mentusa/constants/constants.dart';


// box for a chat message sent from the user

class ChatMessageUser extends StatelessWidget {
  const ChatMessageUser({
    this.message
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.all(8),
          constraints: BoxConstraints(maxWidth: kScreenWidth(context) * 0.8),
          decoration: BoxDecoration(
            border: Border.all(
            color: Colors.grey,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10)
            )),
          child: Text(message, style: TextStyle(fontSize: 15)),
        ),
      ),
    );
  }
}