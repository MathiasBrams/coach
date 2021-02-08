import 'package:flutter/material.dart';
import 'package:mentusa/constants/constants.dart';


// box for a chat message sent from the other part in the chat

class ChatMessageOther extends StatelessWidget {
  const ChatMessageOther({
    this.message
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(8),
            constraints: BoxConstraints(maxWidth: kScreenWidth(context) * 0.8),
            decoration: BoxDecoration(
              color: kTextColor,
              border: Border.all(
              color: Colors.grey,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10)
              )),
            child: Text(message, style: TextStyle(color: Colors.white, fontSize: 15)),
          ),
        ),
      ),
    );
  }
}