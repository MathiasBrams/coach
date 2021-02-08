import 'package:flutter/material.dart';
import 'package:mentusa/common_widgets/mentor_bot_swipe_box.dart';
import 'package:mentusa/constants/constants.dart';

import 'action_button.dart';

class MentorTopSwipeBox extends StatelessWidget {
  const MentorTopSwipeBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    color: Colors.blue[200],
    height: kScreenHeight(context) * 0.75,
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // title of the section, aligned to the left and in bold
          Align(
            alignment: Alignment.centerLeft,
            child: Text('Book a session', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold))),
          
          // space between
          SizedBox(height: kScreenHeight(context) * 0.01),
          
          // body text of the section
          Text('In the first session we will discuss what goals you want to achieve or what obstacles you want to overcome - from there we will work forwards',
            style: TextStyle(color: Colors.white, fontSize: 14)),

          // Row showing icon of the features, eg videocall and describing text
          Row(children: [
            Icon(Icons.video_call, color: Colors.white, size: 40),
            SizedBox(width: kScreenWidth(context) * 0.03),
            Text('1 video call of 20 minutes', style: TextStyle(color: Colors.white))
          ],),

          // Row showing the price and the book now button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text("€0", style: TextStyle(color: Colors.white, fontSize: 24)),
            ActionButton(message: ' Book now '),
          ],),
          // Sized Box to force the section up above the mainaxissize center alignment..
          SizedBox(height: kScreenHeight(context) * 0.1),
        ],
      )
      
    )
    );
  }
}

