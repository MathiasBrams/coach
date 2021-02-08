import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:intl/intl.dart';
import 'package:mentusa/common_widgets/action_button.dart';
import 'package:mentusa/constants/constants.dart';
import 'package:dropdown_search/dropdown_search.dart';


class UpdateGuideScreen extends StatefulWidget {
  const UpdateGuideScreen({
    Key key,
  }) : super(key: key);

  @override
  _UpdateGuideScreenState createState() => _UpdateGuideScreenState();
}

class _UpdateGuideScreenState extends State<UpdateGuideScreen> {


  @override
  Widget build(BuildContext context) {
    return Container(
    color: Colors.lightBlue[200],
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
            alignment: Alignment.center,
            child: Text('Hello!', style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold))),
          
          // space between
          SizedBox(height: kScreenHeight(context) * 0.03),


          // space between
          SizedBox(height: kScreenHeight(context) * 0.03),


          Icon(Icons.sentiment_satisfied_alt, size: 200, color: Colors.white),


          SizedBox(height: kScreenHeight(context) * 0.05),

          Align(
            alignment: Alignment.center,
            child: Text('Take your time and create a great profile - you can do it in less than 5 minutes!', style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold), textAlign: TextAlign.center,)),



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