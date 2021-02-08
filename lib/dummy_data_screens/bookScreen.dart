import 'package:flutter/material.dart';
import 'package:mentusa/common_widgets/action_button.dart';
import 'package:mentusa/constants/constants.dart';


class BookScreen extends StatelessWidget {
  const BookScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    color: Colors.blue[200],
    height: kScreenHeight(context) * 0.75,
    child: Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.date_range, size: 60),

          SizedBox(height: kScreenHeight(context) * 0.025),

          // title of the section, aligned to the left and in bold
          Align(
            alignment: Alignment.centerLeft,
            child: Text('Book a session', style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold))),
          
          // space between
          SizedBox(height: kScreenHeight(context) * 0.01),
          
          // body text of the section
          Text('In the first session we will discuss what goals you want to achieve or what obstacles you want to overcome - from there we will work forwards',
            style: TextStyle(color: Colors.white, fontSize: 16)),

          Row(children: [
            BookingCategoryCard(category: 'Video call', icon: Icons.video_call, price: '250 kr.'),
            BookingCategoryCard(category: 'Audio call', icon: Icons.phone, price: '200 kr.'),
          ]),
          Row(children: [
            BookingCategoryCard(category: 'Live text', icon: Icons.message, price: '150 kr.'),
            BookingCategoryCard(category: 'Contact', icon: Icons.person, price: '0 kr.'),
          ]),

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

class BookingCategoryCard extends StatelessWidget {
  const BookingCategoryCard({
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text('45 minutes'),
                Text(this.price, style: TextStyle(fontWeight: FontWeight.bold)),
              ]),
            ) 
          ]
          ))
    );
  }
}