import 'package:flutter/material.dart';
import 'package:mentusa/common_widgets/action_button.dart';
import 'package:mentusa/constants/constants.dart';


class EducationScreen extends StatelessWidget {
  const EducationScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    color: Colors.orange[300],
    height: kScreenHeight(context) * 0.75,
    child: Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // icon corresponding to the section, eg. method, job, etc
          Icon(Icons.menu_book, size: 60),

          SizedBox(height: kScreenHeight(context) * 0.025),

          // title of the section, aligned to the left and in bold
          Align(
            alignment: Alignment.centerLeft,
            child: Text('Education', style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold))),
          
          // space between
          SizedBox(height: kScreenHeight(context) * 0.01),
          
          ListTile(
          leading: Icon(Icons.fiber_manual_record, color: Colors.white),
          title: Text('Leadership in practice', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18)),
          subtitle: Text('2019 april - may', style: TextStyle(color: Colors.white, fontSize: 18)),
          trailing: Icon(Icons.verified, color: Colors.white)
          ),
          ListTile(
          leading: Icon(Icons.fiber_manual_record, color: Colors.white),
          title: Text('CPH University', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18)),
          subtitle: Text('Psychology\n2015 - 2019', style: TextStyle(color: Colors.white, fontSize: 18)),
          trailing: Icon(Icons.verified, color: Colors.white)
          ),
          ListTile(
          leading: Icon(Icons.fiber_manual_record, color: Colors.white),
          title: Text('Copenhagen Highschool\nSociety Studies Major', style: TextStyle(color: Colors.white, fontSize: 18)),
          subtitle: Text('2012 - 2015', style: TextStyle(color: Colors.white, fontSize: 18)),
          ),
          ListTile(
          leading: Icon(Icons.fiber_manual_record, color: Colors.white),
          title: Text('Copenhagen Coaching\nCoaching in practice', style: TextStyle(color: Colors.white, fontSize: 18)),
          subtitle: Text('2019-2020', style: TextStyle(color: Colors.white, fontSize: 18)),
          ),
          // Sized Box to force the section up above the mainaxissize center alignment..
          SizedBox(height: kScreenHeight(context) * 0.1),
        ],
      )
    )
    );
  }
}