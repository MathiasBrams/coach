import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:intl/intl.dart';
import 'package:mentusa/common_widgets/action_button.dart';
import 'package:mentusa/constants/constants.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:smart_select/smart_select.dart';


class UpdateSkillsScreen extends StatefulWidget {
  const UpdateSkillsScreen({
    Key key,
  }) : super(key: key);

  @override
  _UpdateSkillsScreenState createState() => _UpdateSkillsScreenState();
}

class _UpdateSkillsScreenState extends State<UpdateSkillsScreen> {

  double visibleJobCard = 0;

  List<String> _skill = ['Innovate'];

  List<S2Choice<String>> _days = [
  S2Choice<String>(value: 'ion', title: 'Innovation'),
  S2Choice<String>(value: 'flu', title: 'Coaching'),
  S2Choice<String>(value: 'rea', title: 'Motivation'),
  S2Choice<String>(value: 'ion1', title: 'Innovation'),
  S2Choice<String>(value: 'flu1', title: 'Coaching'),
  S2Choice<String>(value: 'rea1', title: 'Motivation'),
  S2Choice<String>(value: 'ion2', title: 'Innovation'),
  S2Choice<String>(value: 'flu2', title: 'Coaching'),
  S2Choice<String>(value: 'rea2', title: 'Motivation'),
];

  List<String> _method = ['Therapy'];

  List<S2Choice<String>> _methods = [
  S2Choice<String>(value: 'ion', title: 'Therapy'),
  S2Choice<String>(value: 'flu', title: 'Video sessions'),
  S2Choice<String>(value: 'rea', title: 'Motivation'),
  S2Choice<String>(value: 'ion1', title: 'Therapy'),
  S2Choice<String>(value: 'flu1', title: 'Video sessions'),
  S2Choice<String>(value: 'rea1', title: 'Motivation'),
  S2Choice<String>(value: 'ion2', title: 'Therapy'),
  S2Choice<String>(value: 'flu2', title: 'Video sessions'),
  S2Choice<String>(value: 'rea2', title: 'Motivation'),
  S2Choice<String>(value: 'ion3', title: 'Therapy'),
  S2Choice<String>(value: 'flu3', title: 'Video sessions'),
  S2Choice<String>(value: 'rea3', title: 'Motivation'),
];
  


  @override
  Widget build(BuildContext context) {
    return Container(
    color: Colors.orange[200],
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
            child: Text('Choose the things that describe you best', style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold))),
          
          // space between
          SizedBox(height: kScreenHeight(context) * 0.03),

          // space between
          SizedBox(height: kScreenHeight(context) * 0.03),

          SmartSelect<String>.multiple(
          title: 'Skills',
          value: _skill,
          onChange: (state) => setState(() => _skill = state.value),
          choiceItems: _days,
          choiceType: S2ChoiceType.chips,
          modalType: S2ModalType.fullPage,
          tileBuilder: (context, state) {
            return S2Tile.fromState(
              state,
              isTwoLine: true,
              leading: Container(
                width: 40,
                alignment: Alignment.center,
                child: const Icon(Icons.handyman),
              ),
            );
          },
        ),

          
          SizedBox(height: kScreenHeight(context) * 0.01),

          SmartSelect<String>.multiple(
          title: 'Method',
          value: _method,
          onChange: (state) => setState(() => _method = state.value),
          choiceItems: _methods,
          choiceType: S2ChoiceType.chips,
          modalType: S2ModalType.fullPage,
          tileBuilder: (context, state) {
            return S2Tile.fromState(
              state,
              isTwoLine: true,
              leading: Container(
                width: 40,
                alignment: Alignment.center,
                child: const Icon(Icons.menu_book),
              ),
            );
          },
        ),




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