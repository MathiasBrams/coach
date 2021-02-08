import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:mentusa/common_widgets/chat_card.dart';
import 'package:mentusa/common_widgets/search_box.dart';
import 'package:mentusa/common_widgets/search_result_swipe_box.dart';
import 'package:mentusa/common_widgets/type_box.dart';
import 'package:mentusa/constants/constants.dart';

// page that shows when you search for mentees / mentors after filtering
// TODO hardcoded mentor images etc for now, has to update
// TODO get shit to work with scroll / listview....

class ProfileSearchPage extends StatefulWidget {
  @override
  _ProfileSearchPageState createState() => _ProfileSearchPageState();
}

class _ProfileSearchPageState extends State<ProfileSearchPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: kTextColor),
        backgroundColor: Colors.white,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Icon(Icons.search)),
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Icon(Icons.filter_alt)),
            ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Personal Finance', style: TextStyle(fontSize: 24))),
                SizedBox(height: 10),
                Expanded(child: SearchResultSwipeBox(imagePath: 'assets/images/profiles/entrepreneurman.jpg',)),
                Expanded(child: SearchResultSwipeBox(imagePath: 'assets/images/profiles/businesswoman.jpg',)),
              ],
        ),
    ));
  }
}


