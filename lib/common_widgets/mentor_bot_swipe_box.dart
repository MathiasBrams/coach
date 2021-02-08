import 'package:flutter/material.dart';
import 'package:mentusa/common_widgets/action_button.dart';
import 'package:mentusa/constants/constants.dart';

// small second section of the mentor profile, shows name, category, reviews, age, etc

class MentorBottomSwipeBox extends StatelessWidget {
  const MentorBottomSwipeBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    height: kScreenHeight(context) * 0.2,
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Nair Taiana', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Text('30'),
              Icon(Icons.verified_user, color: Colors.green),
              // row inside the row to ensure stars and review rating go together
              Row(
                children: [
                  Text('4.5'),
                Icon(Icons.star, color: Colors.yellow[600]),
                Icon(Icons.star, color: Colors.yellow[600]),
                Icon(Icons.star, color: Colors.yellow[600]),
                Icon(Icons.star, color: Colors.yellow[600]),
                Icon(Icons.star_half, color: Colors.yellow[600]),
              ],)
            ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Emotional Therapy'),
                // row inside the row to ensure icon and review number go together
                Row(children: [
                  Text('88 reviews'),
                  Icon(Icons.arrow_drop_down)
                ],)
              ],),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              ActionButton(message: ' Book now '),
              ActionButton(message: ' Chat now '),
            ],),
            
        ],),
    )
    );
  }
}