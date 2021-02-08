import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:intl/intl.dart';
import 'package:mentusa/common_widgets/action_button.dart';
import 'package:mentusa/constants/constants.dart';
import 'package:dropdown_search/dropdown_search.dart';


class UpdateJobsScreen extends StatefulWidget {
  const UpdateJobsScreen({
    Key key,
  }) : super(key: key);

  @override
  _UpdateJobsScreenState createState() => _UpdateJobsScreenState();
}

class _UpdateJobsScreenState extends State<UpdateJobsScreen> {

  DateTime selectedDate = DateTime.now();
  String selectedDateSimple = '01/01/2010';
  double visibleJobCard = 0;
  


  // method for picking date 
  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }



  @override
  Widget build(BuildContext context) {
    return Container(
    color: Colors.yellow[400],
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
            child: Text('Add your former jobs', style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold))),
          
          // space between
          SizedBox(height: kScreenHeight(context) * 0.03),

          Opacity(
            opacity: visibleJobCard,
             child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('January 2019 - March 2020')),
                Card(
                child: ListTile(
                  title: Text('Store Manager'),
                  subtitle: Text('Shaping New Tomorrow'),
                )),
              ]),
          ),

          // space between
          SizedBox(height: kScreenHeight(context) * 0.03),

          // Drop down box industry

          DropdownSearch<String>(
            mode: Mode.MENU,
            showSelectedItem: true,
            items: ["Retail", "Finance", "Marketing", 'Consulting', 'Aviation', 'Software'],
            label: "Select industry",
            hint: "country in menu mode",
            onChanged: print,
            selectedItem: "Retail"),

          
          
          // Text Field for job title
          Card(
            elevation: 0,
            color: Colors.transparent,
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Enter your job title'
              ),
            ),
          ),

          // Text Field for company name
          Card(
            elevation: 0,
            color: Colors.transparent,
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Enter the company name'
              ),
            ),
          ),

          SizedBox(height: kScreenHeight(context) * 0.05),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text('Select start date', style: TextStyle(color: kGreySecondaryColor)),
                  MaterialButton(
                  elevation: 0,
                  shape: RoundedRectangleBorder(side: BorderSide(color: kGreySecondaryColor)),
                  color: Colors.transparent,
                  child: Text(selectedDateSimple.toString(), style: TextStyle(color: kTextColor)),
                  onPressed: () {
                    _selectDate(context);
                    print(selectedDate.toString());
                    selectedDateSimple = DateFormat('yMd').format(selectedDate);
                  },
                ),
                ]
              ),
              Column(
              children: [
                Text('Select end date', style: TextStyle(color: kGreySecondaryColor)),
                MaterialButton(
                elevation: 0,
                shape: RoundedRectangleBorder(side: BorderSide(color: kGreySecondaryColor)),
                color: Colors.transparent,
                child: Text(selectedDateSimple.toString(), style: TextStyle(color: kTextColor)),
                onPressed: () {
                  _selectDate(context);
                  print(selectedDate.toString());
                  selectedDateSimple = DateFormat('yMd').format(selectedDate);
                },
              ),
              ]
            ),
          ]),

          
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