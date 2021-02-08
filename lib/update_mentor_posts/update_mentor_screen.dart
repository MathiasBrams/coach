import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:intl/intl.dart';
import 'package:mentusa/common_widgets/action_button.dart';
import 'package:mentusa/constants/constants.dart';
import 'package:dropdown_search/dropdown_search.dart';


class UpdateMentorPostMentorship extends StatefulWidget {
  const UpdateMentorPostMentorship({
    Key key,
  }) : super(key: key);

  @override
  _UpdateMentorPostMentorshipState createState() => _UpdateMentorPostMentorshipState();
}

class _UpdateMentorPostMentorshipState extends State<UpdateMentorPostMentorship> {

  @override
  Widget build(BuildContext context) {
    return Container(
    color: Colors.orange[300],
    height: kScreenHeight(context) * 0.95,
    child: Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          // icon corresponding to the section, eg. method, job, etc
          // Icon(Icons.question_answer, size: 60),

          SizedBox(height: kScreenHeight(context) * 0.05),

          // title of the section, aligned to the left and in bold
          Align(
            alignment: Alignment.centerLeft,
            child: Text('Will you provide mentorship?', style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold))),

          
          
          // space between
          SizedBox(height: kScreenHeight(context) * 0.03),

          Align(
            alignment: Alignment.centerLeft,
            child: Text('Mentorship implies mentees can stay in touch with you on a daily basis and they will receive a discount on sessions for a monthly subscription fee.\n\nYou have a right to accept or reject potential mentees.', style: TextStyle(color: Colors.white, fontSize: 16))),

          // space between
          SizedBox(height: kScreenHeight(context) * 0.03),


          Card(child:
            ListTile(
              leading: Icon(Icons.payment),
              title: Text('Monthly Price'),
              trailing: Icon(Icons.check_box_outline_blank, color: Colors.grey, size: 50),
            )),

          Card(child:
            ListTile(
              leading: Icon(Icons.arrow_circle_down),
              title: Text('Session discount'),
              trailing: Icon(Icons.check_box_outline_blank, color: Colors.grey, size: 50),
            )),
          
          
          

          SizedBox(height: kScreenHeight(context) * 0.05),

          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: MaterialButton(
                color: kTextColor,
                minWidth: kScreenWidth(context) * 0.8,
                height: kScreenHeight(context) * 0.08,
                child: Text('Save and finish', style: TextStyle(fontSize: 20, color: Colors.white)),
                onPressed: () {
                  // SwiperController.next();
                }
              ),
            ),
          ),
        ],
      )
    )
    );
  }
}