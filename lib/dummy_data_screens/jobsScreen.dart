import 'package:flutter/material.dart';
import 'package:mentusa/common_widgets/action_button.dart';
import 'package:mentusa/constants/constants.dart';


class JobsScreen extends StatelessWidget {
  const JobsScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    color: Colors.red[200],
    height: kScreenHeight(context) * 0.75,
    child: Padding(
      padding: const EdgeInsets.all(30.0),
      child: ListView(
        //mainAxisSize: MainAxisSize.max,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // icon corresponding to the section, eg. method, job, etc
          Icon(Icons.business_center, size: 60),

          SizedBox(height: kScreenHeight(context) * 0.025),

          // title of the section, aligned to the left and in bold
          Align(
            alignment: Alignment.centerLeft,
            child: Text('Experience', style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold))),
          
          // space between
          SizedBox(height: kScreenHeight(context) * 0.01),
          
          ListTile(
          leading: Icon(Icons.fiber_manual_record, color: Colors.white),
          title: Text('Retired', style: TextStyle(color: Colors.white, fontSize: 18)),
          subtitle: Text('2019 - today', style: TextStyle(color: Colors.white, fontSize: 18)),
          trailing: Icon(Icons.verified, color: Colors.white)
          ),
          ListTile(
          leading: Icon(Icons.fiber_manual_record, color: Colors.white),
          title: Text('CEO', style: TextStyle(color: Colors.white, fontSize: 18)),
          subtitle: Text('2011 - 2019', style: TextStyle(color: Colors.white, fontSize: 18)),
          trailing: Icon(Icons.verified, color: Colors.white)
          ),
          ListTile(
          leading: Icon(Icons.fiber_manual_record, color: Colors.white),
          title: Text('COO', style: TextStyle(color: Colors.white, fontSize: 18)),
          subtitle: Text('2005 - 2010', style: TextStyle(color: Colors.white, fontSize: 18)),
          ),
          ListTile(
          leading: Icon(Icons.fiber_manual_record, color: Colors.white),
          title: Text('Operations Manager', style: TextStyle(color: Colors.white, fontSize: 18)),
          subtitle: Text('1997 - 2005', style: TextStyle(color: Colors.white, fontSize: 18)),
          ),
          ListTile(
          leading: Icon(Icons.fiber_manual_record, color: Colors.white),
          title: Text('Operations Manager', style: TextStyle(color: Colors.white, fontSize: 18)),
          subtitle: Text('1997 - 2005', style: TextStyle(color: Colors.white, fontSize: 18)),
          ),
          ListTile(
          leading: Icon(Icons.fiber_manual_record, color: Colors.white),
          title: Text('Operations Manager', style: TextStyle(color: Colors.white, fontSize: 18)),
          subtitle: Text('1997 - 2005', style: TextStyle(color: Colors.white, fontSize: 18)),
          ),
          ListTile(
          leading: Icon(Icons.fiber_manual_record, color: Colors.white),
          title: Text('Operations Manager', style: TextStyle(color: Colors.white, fontSize: 18)),
          subtitle: Text('1997 - 2005', style: TextStyle(color: Colors.white, fontSize: 18)),
          ),
          ListTile(
          leading: Icon(Icons.fiber_manual_record, color: Colors.white),
          title: Text('Operations Manager', style: TextStyle(color: Colors.white, fontSize: 18)),
          subtitle: Text('1997 - 2005', style: TextStyle(color: Colors.white, fontSize: 18)),
          ),
          // Sized Box to force the section up above the mainaxissize center alignment..
          SizedBox(height: kScreenHeight(context) * 0.1),
        ],
      )
    )
    );
  }
}