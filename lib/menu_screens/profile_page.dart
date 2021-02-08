import 'package:flutter/material.dart';
import 'package:mentusa/common_widgets/category_card.dart';
import 'package:mentusa/common_widgets/mentee_request_bubble.dart';
import 'package:mentusa/common_widgets/profile_card.dart';
import 'package:mentusa/common_widgets/profile_info_tile.dart';
import 'package:mentusa/constants/constants.dart';
import 'package:mentusa/extra_screens/forms_page.dart';
import 'package:mentusa/extra_screens/update_mentor_post.dart';
import 'package:mentusa/extra_screens/update_profile_page.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Mentusa',
              style:
                  TextStyle(color: kTextColor, fontWeight: FontWeight.normal)),
          backgroundColor: Colors.white,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Icon(Icons.settings, size: 30, color: kTextColor),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            child: SingleChildScrollView(
              physics: ScrollPhysics(),
               child: Column(
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.teal,
                      radius: 40,
                      backgroundImage: AssetImage(
                          'assets/images/profiles/entrepreneurman.jpg')),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text('Mathias Brams',
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Icon(Icons.verified_user, color: Colors.green),
                    Text('26'),
                  ]),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // reviews
                      Text('4.5'),
                      Icon(Icons.star, color: Colors.yellow[600]),
                      Icon(Icons.star, color: Colors.yellow[600]),
                      Icon(Icons.star, color: Colors.yellow[600]),
                      Icon(Icons.star, color: Colors.yellow[600]),
                      Icon(Icons.star_half, color: Colors.yellow[600]),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text('88 reviews'), Icon(Icons.arrow_drop_down)],
                  ),
                  SizedBox(height: 10),
                  BuildBasicInformation(),
                  SizedBox(height: 10),
                  _buildProfiles(context),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('General', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
                  ProfileInfoTile(
                    title: 'Payments',
                    icon: Icons.money),
                  ProfileInfoTile(
                    title: 'Invite a friend',
                    icon: Icons.person_add),
                  ProfileInfoTile(
                    title: 'Feedback',
                    icon: Icons.feedback),
                  ProfileInfoTile(
                    title: 'FAQ & Support',
                    icon: Icons.help)
                    
                  
                ],
                
              ),
            ),
          ),
        ),
      ),
    );
  }

  // builds the profiles of the user, aka aktive categories

  Widget _buildProfiles(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Mentor posts', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Icon(Icons.arrow_drop_down, size: 40)
          ],
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text('Entrepreneurship')),
        ProfileCard(title: '"Start-up mentoring"',
          navigation: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => UpdateMentorPost()));
            }),
        ProfileCard(title: '"MVP Business Plans"',
          navigation: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => UpdateMentorPost()));
            }),
        ProfileInfoTile(title: 'Create a new post', iconFunction: Icons.add,
          navigation: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => UpdateProfilePage()));
            }),
        SizedBox(height: 20)
      ],
    );
  }

// builds the row of icons for mentee requests, ala tinder
// will be moved to chat page probably... for now nowhere!! //todo
  Widget _buildRequests(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Align(
                alignment: Alignment.bottomLeft,
                child: Text('Requests', style: TextStyle(fontSize: 24))),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                MenteeBubble(category: 'Entrepreneurship'),
              ],
            )
          ],
        ));
  }
}

class BuildBasicInformation extends StatelessWidget {
  const BuildBasicInformation({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 5),
        ProfileInfoTile(
            title: 'My Profile',
            icon: Icons.info,
            iconFunction: Icons.edit,
            navigation: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => UpdateProfilePage()));
            }),
        SizedBox(height: 5),
        ProfileInfoTile(
            title: 'My Forms',
            icon: Icons.list,
            iconFunction: Icons.edit,
            navigation: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyFormsPage()));
            }),
      ],
    );
  }
}
