import 'package:flutter/material.dart';
import 'package:mentusa/common_widgets/action_button.dart';
import 'package:mentusa/constants/constants.dart';


class MentorshipScreen extends StatelessWidget {
  const MentorshipScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    color: Colors.blue[400],
    height: kScreenHeight(context) * 0.75,
    child: Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.person_search, size: 60),

          SizedBox(height: kScreenHeight(context) * 0.025),

          // title of the section, aligned to the left and in bold
          Align(
            alignment: Alignment.centerLeft,
            child: Text('Apply for mentorship', style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold))),
          
          // space between
          SizedBox(height: kScreenHeight(context) * 0.01),
          
          // body text of the section
          Text('I am open for applications to be my mentee. For my mentees I am always available on chat and provide a heavy discount on my sessions, as I want us to stay in contact as much as needed for you to reach your dreams.',
            style: TextStyle(color: Colors.white, fontSize: 16)),

          SizedBox(height: kScreenHeight(context) * 0.03),
          
          Row(children: [
            MentorCategoryCard(category: '24/5 chat', icon: Icons.message, price: 'Included'),
            MentorCategoryCard(category: 'Discounts', icon: Icons.money_off, price: '50%'),
          ]),
          SizedBox(height: kScreenHeight(context) * 0.02),


          Text('500 kr. per month', style: TextStyle(fontSize: 26, color: Colors.white)),


          SizedBox(height: kScreenHeight(context) * 0.01),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: MaterialButton(
                color: kTextColor,
                minWidth: kScreenWidth(context) * 0.8,
                height: kScreenHeight(context) * 0.08,
                child: Text('Apply now', style: TextStyle(fontSize: 20, color: Colors.white)),
                onPressed: () {
                  // SwiperController.next();
                }
              ),
            ),
          ),

          // Row showing icon of the features, eg videocall and describing text
          // Row(children: [
          //   Icon(Icons.video_call, color: Colors.white, size: 40),
          //   SizedBox(width: kScreenWidth(context) * 0.03),
          //   Text('1 video call of 20 minutes', style: TextStyle(color: Colors.white))
          // ],),

          // Row showing the price and the book now button
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //   Text("€0", style: TextStyle(color: Colors.white, fontSize: 24)),
          //   ActionButton(message: ' Book now '),
          // ],),
        ],
      )
    )
    );
  }
}

class MentorCategoryCard extends StatelessWidget {
  const MentorCategoryCard({
    this.category,
    this.icon,
    this.price,
    Key key,
  }) : super(key: key);

  final String category;
  final IconData icon;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: kScreenWidth(context) * 0.42,
      height: kScreenHeight(context) * 0.2,
      child: Card(
        color: Colors.green[400],
        elevation: 15,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(this.category, style: TextStyle(fontSize: 26)),
            ),
            Icon(this.icon, size: 60, color: Colors.white),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                Text(this.price, style: TextStyle(fontWeight: FontWeight.bold)),
              ]),
            ) 
          ]
          ))
    );
  }
}