import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:intl/intl.dart';
import 'package:mentusa/common_widgets/action_button.dart';
import 'package:mentusa/constants/constants.dart';
import 'package:dropdown_search/dropdown_search.dart';


class UpdateLanguagesScreen extends StatefulWidget {
  const UpdateLanguagesScreen({
    Key key,
  }) : super(key: key);

  @override
  _UpdateLanguagesScreenState createState() => _UpdateLanguagesScreenState();
}

class _UpdateLanguagesScreenState extends State<UpdateLanguagesScreen> {

  double visibleJobCard = 0;
  


  @override
  Widget build(BuildContext context) {
    return Container(
    color: Colors.green[200],
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
            child: Text('What languages can you speak?', style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold))),
          
          // space between
          SizedBox(height: kScreenHeight(context) * 0.03),

          Opacity(
            opacity: visibleJobCard,
             child: Column(
              children: [
                Card(
                child: ListTile(
                  title: Text('English'),
                  subtitle: Text('Fluent'),
                )),
              ]),
          ),

          // space between
          SizedBox(height: kScreenHeight(context) * 0.03),

          // Drop down box industry

          DropdownSearch<String>(
            mode: Mode.MENU,
            showSelectedItem: true,
            items: ["English", "Danish", "Spanish", 'German', 'French', 'Software'],
            label: "What languages do you speak?",
            hint: "country in menu mode",
            onChanged: print,
            selectedItem: "English"),

          SizedBox(height: kScreenHeight(context) * 0.05),
          
          DropdownSearch<String>(
            mode: Mode.MENU,
            showSelectedItem: true,
            items: ["Native", "Fluent", "Conversation", 'Basic'],
            label: "Select the level",
            hint: "country in menu mode",
            onChanged: print,
            selectedItem: "Fluent"),

          
          SizedBox(height: kScreenHeight(context) * 0.01),
          Align(
            alignment: Alignment.centerRight,
            child: MaterialButton(
              height: kScreenHeight(context) * 0.07,
              shape: CircleBorder(side: BorderSide.none),
              color: Colors.blue[500],
              child: Icon(Icons.add, color: Colors.white, size: 35),
              onPressed: () {
                setState(() {
                  visibleJobCard = 1;
                });
                
              }
              ),
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