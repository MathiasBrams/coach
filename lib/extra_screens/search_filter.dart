import 'package:flutter/material.dart';
import 'package:mentusa/common_widgets/category_card.dart';
import 'package:mentusa/common_widgets/chat_card.dart';
import 'package:mentusa/constants/constants.dart';

class FilterPage extends StatefulWidget {
  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(icon: Icon(Icons.cancel_sharp, color: kTextColor), onPressed: (){
                  Navigator.pop(context);
                }),
                TextButton(onPressed: null, child: Text('clear'))
            ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Show Pro Profiles'),
                IconButton(onPressed: null, icon: Icon(Icons.toggle_on))
            ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Show Verified Profiles'),
                IconButton(onPressed: null, icon: Icon(Icons.toggle_on))
            ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Select Languages'),
                Text('Mentors Age'),
            ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DropdownButton(hint: Text('e.g. English'),items: null, onChanged: null),
                DropdownButton(hint: Text('e.g. 24-30'), items: null, onChanged: null)
            ],),
            Text("Mentor's monthly subscription "),
            DropdownButton(hint: Text('max 100€'), items: null, onChanged: null),
            Text('Select Mentors Category:'),

          ],
        )

      ),
    );
  }
}
