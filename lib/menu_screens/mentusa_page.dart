import 'package:flutter/material.dart';
import 'package:mentusa/common_widgets/chat_card.dart';
import 'package:mentusa/common_widgets/mentee_request_bubble.dart';
import 'package:mentusa/constants/constants.dart';
import 'package:mentusa/extra_screens/chat_request.dart';
import 'package:mentusa/extra_screens/mentor_profile.dart';
import 'package:mentusa/extra_screens/profile_search.dart';
import 'package:mentusa/extra_screens/search_category_page.dart';


// mentusa page is the chat page, showing your mentees and/or mentors

class MentusaPage extends StatefulWidget {
  @override
  _MentusaPageState createState() => _MentusaPageState();
}

class _MentusaPageState extends State<MentusaPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Inbox', style: TextStyle(color: kTextColor, fontWeight: FontWeight.normal)),
          backgroundColor: Colors.white,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChatRequestsPage()),
                  );
                },
                icon: Icon(Icons.notifications, color: kTextColor)),
            )
          ],
          bottom: TabBar(
                tabs: [
                  Tab(child: Text('Mentees', style: TextStyle(color: kTextColor, fontSize: 20))),
                  Tab(child: Text('Mentors', style: TextStyle(color: kTextColor, fontSize: 20))),
                ],
        ),),
        body: TabBarView(
            children: [
              _buildMenteeChats(context),
              _buildMentorChats(context),
            ],
          ),
      ),
    );
  }

  // builds the column of chats with mentees

  Widget _buildMenteeChats(BuildContext context) {

    return SingleChildScrollView(
      physics: ScrollPhysics(),
      child: Padding(
    
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
            Text('Available', style: TextStyle(color: kTextColor)),
            Icon(Icons.toggle_on, color: Colors.blue[500], size: 60),
          ],),
          ChatCard(name: 'Morten Olsen', message: 'I think you should..\n\nEntrepreneurship', imagePath: 'assets/images/profiles/businessman.jpg', timeSent: '12:13'),
          
          // alternative to the category name in the box...
          // Align(
          //   alignment: Alignment.centerLeft,
          //   child: Text('Emotional Intelligence')),

          ChatCard(name: 'Frederikke Olsen', message: "You are doing gre..\n\nEmotional Therapy", imagePath: 'assets/images/profiles/businesswoman.jpg', timeSent: 'Monday 15:13'),
        ],
      ))
        );
      }


  // builds the column of chats with mentors

  Widget _buildMentorChats(BuildContext context) {

    return SingleChildScrollView(
      physics: ScrollPhysics(),
      child: Padding(
    
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          ChatCard(name: 'Mathias Brams', message: 'I think you should..\n\nEntrepreneurship', imagePath: 'assets/images/profiles/entrepreneurman.jpg', timeSent: '12:13'),
          ChatCard(name: 'Lars Bo', message: "Try to see it like..\n\nDiscipline", imagePath: 'assets/images/profiles/businessman.jpg', timeSent: 'Tuesday 8:19'),
          
          // alternative to the category name in the box...
          // Align(
          //   alignment: Alignment.centerLeft,
          //   child: Text('Emotional Intelligence')),

          ChatCard(name: 'Mia Larsen', message: "You are doing gre..\n\nEmotional Therapy", imagePath: 'assets/images/profiles/businesswoman.jpg', timeSent: 'Monday 15:13'),
        ],
      ))
        );
      }
}


