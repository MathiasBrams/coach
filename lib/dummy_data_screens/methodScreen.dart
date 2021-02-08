import 'package:flutter/material.dart';
import 'package:mentusa/common_widgets/action_button.dart';
import 'package:mentusa/constants/constants.dart';


class MethodScreen extends StatelessWidget {
  const MethodScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    color: Colors.green[200],
    height: kScreenHeight(context) * 0.75,
    child: Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // icon corresponding to the section, eg. method, job, etc
          Icon(Icons.question_answer, size: 60),

          SizedBox(height: kScreenHeight(context) * 0.025),

          // title of the section, aligned to the left and in bold
          Align(
            alignment: Alignment.centerLeft,
            child: Text('How I mentor', style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold))),
          
          // space between
          SizedBox(height: kScreenHeight(context) * 0.01),
          
          // body text of the section
          Text('I have always believed in learning by doing and learning by communicating. \n\nI have worked with several mentees over the years and we get the best results, when we stay regularly in touch. \n\nIm always available by chat and Im available for a meeting atleast once per week, where we go through your thoughts and experiences and learnings from the week. I expect you to read and participate with passion',
            style: TextStyle(color: Colors.white, fontSize: 18)),
          // Sized Box to force the section up above the mainaxissize center alignment..
          SizedBox(height: kScreenHeight(context) * 0.1),
        ],
      )
    )
    );
  }
}