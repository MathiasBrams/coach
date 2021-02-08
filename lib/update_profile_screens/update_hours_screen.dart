import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:intl/intl.dart';
import 'package:mentusa/common_widgets/action_button.dart';
import 'package:mentusa/constants/constants.dart';
import 'package:dropdown_search/dropdown_search.dart';


class UpdateHoursScreen extends StatefulWidget {
  const UpdateHoursScreen({
    Key key,
  }) : super(key: key);

  @override
  _UpdateHoursScreenState createState() => _UpdateHoursScreenState();
}

class _UpdateHoursScreenState extends State<UpdateHoursScreen> {

  Color timeBoxColorOff = Colors.white;
  Color timeBoxColorOn = Colors.green; 
  Color timeBoxColorStandard = Colors.white;


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: ScrollPhysics(),
      child: Container(
      color: Colors.blue[200],
      height: kScreenHeight(context) * 0.95,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [

            // title of the section, aligned to the left and in bold
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Set the time you are available for calls', style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold))),
            
            // space between
            SizedBox(height: kScreenHeight(context) * 0.03),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('Mon'),
              Text('Tue'),
              Text('Wed'),
              Text('Thu'),
              Text('Fri'),
              Text('Sat'),
              Text('Sun'),
            ],),
            // space between
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 7,
              children: List.generate(84, (index) {
              return Center(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      timeBoxColorStandard = timeBoxColorOn;
                    });
                  },
                  child: Container(
                    // height: kScreenHeight(context) * 0.05,
                    // width: kScreenWidth(context) * 0.1,
                    decoration: BoxDecoration(color: timeBoxColorStandard, border: Border.all()),
                    
                  ),
                ),
              );
            }),
            ),

            

            SizedBox(height: kScreenHeight(context) * 0.05),

            
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
      ),
    );
  }
}