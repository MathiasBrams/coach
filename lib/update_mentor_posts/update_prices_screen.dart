import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:intl/intl.dart';
import 'package:mentusa/common_widgets/action_button.dart';
import 'package:mentusa/constants/constants.dart';
import 'package:dropdown_search/dropdown_search.dart';


class UpdateMentorPostPrices extends StatefulWidget {
  const UpdateMentorPostPrices({
    Key key,
  }) : super(key: key);

  @override
  _UpdateMentorPostPricesState createState() => _UpdateMentorPostPricesState();
}

class _UpdateMentorPostPricesState extends State<UpdateMentorPostPrices> {

  @override
  Widget build(BuildContext context) {
    return Container(
    color: Colors.lime[400],
    height: kScreenHeight(context) * 0.95,
    child: Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [


          SizedBox(height: kScreenHeight(context) * 0.05),

          // title of the section, aligned to the left and in bold
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Set your offerings', style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold))),
          ),
          // space between
          SizedBox(height: kScreenHeight(context) * 0.03),

          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Decide which forms of communication you will provide your sessions in, how long each session will be and how much it will cost per session.', style: TextStyle(color: Colors.white, fontSize: 16))),
          ),

          SizedBox(height: kScreenHeight(context) * 0.03),

          // Drop down box industry
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30),
            child: DropdownSearch<String>(
              mode: Mode.MENU,
              showSelectedItem: true,
              items: ["Danish Crowns", "Euros", "Dollars"],
              label: "Select a currency",
              hint: "country in menu mode",
              onChanged: print,
              selectedItem: "Euros"),
          ),

          // space between
          SizedBox(height: kScreenHeight(context) * 0.03),
          
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              Text('Minutes'),
              SizedBox(width: 15),
              Text('Price'),
              SizedBox(width: 15),
            ],),
            PriceTile(icon: Icons.video_call, category: 'Video'),
            PriceTile(icon: Icons.call, category: 'Phone call'),
            PriceTile(icon: Icons.message, category: 'Live texting'),

          SizedBox(height: kScreenHeight(context) * 0.05),



          
          SizedBox(height: kScreenHeight(context) * 0.01),

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

class PriceTile extends StatelessWidget {
  const PriceTile({
    Key key,
    this.icon,
    this.category,
  }) : super(key: key);

  final IconData icon;
  final String category;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.check_box, color: Colors.white, size: 40),
        Container(
        width: kScreenWidth(context) * 0.89,
        height: kScreenHeight(context) * 0.08,
        child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Row(children: [
              Icon(this.icon, size: 50, color: Colors.lime[800]),
              SizedBox(width: 10),
              Text(this.category, style: TextStyle(fontSize: 25)),
            ],),
            Row(children: [
              Icon(Icons.check_box_outline_blank, color: Colors.grey, size: 50),
              SizedBox(width: 10),
              Icon(Icons.check_box_outline_blank, color: Colors.grey, size: 50),
            ],),
          ],)
        ),
      ),]
    );
  }
}