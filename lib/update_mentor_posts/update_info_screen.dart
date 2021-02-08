import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:intl/intl.dart';
import 'package:mentusa/common_widgets/action_button.dart';
import 'package:mentusa/constants/constants.dart';
import 'package:dropdown_search/dropdown_search.dart';


class UpdateMentorPostInfo extends StatefulWidget {
  const UpdateMentorPostInfo({
    Key key,
  }) : super(key: key);

  @override
  _UpdateMentorPostInfoState createState() => _UpdateMentorPostInfoState();
}

class _UpdateMentorPostInfoState extends State<UpdateMentorPostInfo> {

  @override
  Widget build(BuildContext context) {
    return Container(
    color: Colors.pink[200],
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
            child: Text('Write a fitting title and description', style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold))),
          
          // space between
          SizedBox(height: kScreenHeight(context) * 0.03),

          Align(
            alignment: Alignment.centerLeft,
            child: Text('A catching title and description goes a long way. Try to use simple language and get straight to the point.', style: TextStyle(color: Colors.white, fontSize: 16))),

          // space between
          SizedBox(height: kScreenHeight(context) * 0.03),

          // Drop down box industry

          // Text Field for job title
          Card(
            elevation: 0,
            color: Colors.transparent,
            child: TextFormField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                
                labelText: 'Write a title for your Mentor post'
              ),
            ),
          ),

          // space between
          SizedBox(height: kScreenHeight(context) * 0.03),

          // Text Field for company name
          Card(
            elevation: 0,
            color: Colors.transparent,
            child: TextFormField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                fillColor: Colors.white,
                labelText: 'Write a description for your Mentor post'
              ),
            ),
          ),

          SizedBox(height: kScreenHeight(context) * 0.05),



          
          SizedBox(height: kScreenHeight(context) * 0.01),
          Align(
            alignment: Alignment.centerRight,
            child: MaterialButton(
              height: kScreenHeight(context) * 0.07,
              shape: CircleBorder(side: BorderSide.none),
              color: Colors.blue[500],
              child: Icon(Icons.add, color: Colors.white, size: 35),
              onPressed: () {
                })
                
          ),

          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: MaterialButton(
                color: kTextColor,
                minWidth: kScreenWidth(context) * 0.8,
                height: kScreenHeight(context) * 0.08,
                child: Text('Save and continue', style: TextStyle(fontSize: 20, color: Colors.white)),
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