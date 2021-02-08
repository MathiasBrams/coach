import 'package:flutter/material.dart';
import 'package:mentusa/common_widgets/action_button.dart';
import 'package:mentusa/constants/constants.dart';


class ReviewsScreen extends StatelessWidget {
  const ReviewsScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    color: Colors.purple[300],
    height: kScreenHeight(context) * 0.75,
    child: Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // icon corresponding to the section, eg. method, job, etc
          Icon(Icons.rate_review, size: 60),

          SizedBox(height: kScreenHeight(context) * 0.025),

          // title of the section, aligned to the left and in bold
          Align(
            alignment: Alignment.centerLeft,
            child: Text('Top reviews', style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold))),
          
          // space between
          SizedBox(height: kScreenHeight(context) * 0.01),
          
          ListTile(
          leading: CircleAvatar(radius: 40, backgroundImage: AssetImage('assets/images/profiles/entrepreneurman.jpg')),
          title: Row(
            children: [
              Text('5', style: TextStyle(fontSize: 26, color: Colors.white)),
              Icon(Icons.star, color: Colors.yellow[600]),
              Icon(Icons.star, color: Colors.yellow[600]),
              Icon(Icons.star, color: Colors.yellow[600]),
              Icon(Icons.star, color: Colors.yellow[600]),
              Icon(Icons.star, color: Colors.yellow[600]),
              ],),
          subtitle: Text('Martin Larsen\n\n"Nair truly changed my life. I was at a really lowpoint, when I got in contact with her. She was able to give me a whole new perspective on my situation and really turn things around. I truly recommend her to anybody!!"', style: TextStyle(fontStyle: FontStyle.italic, color: Colors.white, fontSize: 18)),
          ),
        ],
      )
    )
    );
  }
}