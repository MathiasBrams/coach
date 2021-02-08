import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:intl/intl.dart';
import 'package:mentusa/common_widgets/action_button.dart';
import 'package:mentusa/constants/constants.dart';
import 'package:dropdown_search/dropdown_search.dart';


class UpdateMentorPostBasics extends StatefulWidget {
  const UpdateMentorPostBasics({
    Key key,
  }) : super(key: key);

  @override
  _UpdateMentorPostBasicsState createState() => _UpdateMentorPostBasicsState();
}

class _UpdateMentorPostBasicsState extends State<UpdateMentorPostBasics> {


  @override
  Widget build(BuildContext context) {
    return Container(
    color: Colors.purple[200],
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
            child: Text('Select the most fitting categories', style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold))),
          
          // space between
          SizedBox(height: kScreenHeight(context) * 0.03),

          // space between
          SizedBox(height: kScreenHeight(context) * 0.03),

          // Subcategory

          DropdownSearch<String>(
            mode: Mode.MENU,
            showSelectedItem: true,
            items: ["Career", "Entrepreneurship", "Leadership", 'Sales', 'Personal finance', 'Personal development', 'Emotions', 'Relationships', 'Addictions'],
            label: "Category",
            hint: "country in menu mode",
            onChanged: print,
            selectedItem: "Career"),

          // space between
          SizedBox(height: kScreenHeight(context) * 0.03),


          // drop down box sub category
          DropdownSearch<String>(
            mode: Mode.MENU,
            showSelectedItem: true,
            items: ["Promotion", "Career change", "Development"],
            label: "Sub-category",
            hint: "country in menu mode",
            onChanged: print,
            selectedItem: "Promotion"),

          // space between
          SizedBox(height: kScreenHeight(context) * 0.03),

          Align(
            alignment: Alignment.centerLeft,
            child: Text('Attach a video or image', style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold))),
          
          // space between
          SizedBox(height: kScreenHeight(context) * 0.03),

          Container(
            width: kScreenWidth(context) * 0.6,
            height: kScreenHeight(context) * 0.3,
            child:
            Card(
              elevation: 20,
              child: Icon(Icons.attach_file, size: 70)

            )),

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