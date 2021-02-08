import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:mentusa/common_widgets/chat_card.dart';
import 'package:mentusa/common_widgets/mentee_request_bubble.dart';
import 'package:mentusa/constants/constants.dart';
import 'package:mentusa/extra_screens/chat_request.dart';
import 'package:mentusa/extra_screens/mentor_profile.dart';
import 'package:mentusa/extra_screens/profile_search.dart';
import 'package:mentusa/extra_screens/search_category_page.dart';


// my forms page is where you create and view forms and form responses

class MyFormsPage extends StatefulWidget {
  @override
  _MyFormsPageState createState() => _MyFormsPageState();
}

class _MyFormsPageState extends State<MyFormsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Forms', style: TextStyle(color: kTextColor, fontWeight: FontWeight.normal)),
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: kTextColor),
          actions: [
            // Preview icon
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChatRequestsPage()),
                  );
                },
                icon: Icon(Icons.play_arrow, color: kTextColor))),

            // library / more icon
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChatRequestsPage()),
                  );
                },
                icon: Icon(Icons.more_vert, color: kTextColor)),
            )
          ],
          bottom: TabBar(
                tabs: [
                  Tab(child: Text('Questions', style: TextStyle(color: kTextColor, fontSize: 20))),
                  Tab(child: Text('Responses', style: TextStyle(color: kTextColor, fontSize: 20))),
                ],
        ),),
        body: TabBarView(
            children: [
              _buildQuestions(context),
              _buildResponses(context),
            ],
          ),
      ),
    );
  }

  // builds the column of chats with mentees

  Widget _buildQuestions(BuildContext context) {

    return SingleChildScrollView(
      physics: ScrollPhysics(),
      child: Column(
        
        children: <Widget>[
          
          // Title card
          Card(child: Container(
            width: kScreenWidth(context) * 1,
            height: kScreenHeight(context) * 0.15,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('Untitled Form', style: TextStyle(fontSize: 30)),
                SizedBox(height: 20),
                Text('Form description', style: TextStyle(fontSize: 18))
              ]
                ),
            ))),


          // question section card example

          Card(child: Container(
            width: kScreenWidth(context) * 1,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                
                DropdownSearch(
                  mode: Mode.MENU,
                  showSelectedItem: true,
                  items: ["Multiple choice", "Checkboxes", "Dropdown", 'Linear Scale', 'Short answer', 'Paragraph', 'Multiple choice grid', 'Checkbox grid'],
                  hint: "country in menu mode",
                  onChanged: print,
                  selectedItem: "Multiple choice"),
                SizedBox(height: 15),
                TextFormField(initialValue: 'Untitled Question', style: TextStyle(fontSize: 20)),
                SizedBox(height: 15),
                ListTile(leading: Icon(Icons.radio_button_off), title: Text('Option 1')),
                ListTile(leading: Icon(Icons.radio_button_off), title: Text('Add option', style: TextStyle(color: kGreySecondaryColor))),
                 
              ]
                ),
            ))),
          
          // has to be pinned to bottom... bar with action buttons for new section, etc
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(icon: Icon(Icons.add, color: kTextColor), onPressed: null),
                    IconButton(icon: Icon(Icons.subject_outlined, color: kTextColor), onPressed: null),
                    IconButton(icon: Icon(Icons.text_format, color: kTextColor), onPressed: null),
                    IconButton(icon: Icon(Icons.text_fields, color: kTextColor), onPressed: null),
                    IconButton(icon: Icon(Icons.attach_file, color: kTextColor), onPressed: null)
                  ] 
                ),
              ),
            ),
          ),

        ]
      )
        );
      }


  // builds the column of chats with mentors

  Widget _buildResponses(BuildContext context) {

    return SingleChildScrollView(
      physics: ScrollPhysics(),
      child: Padding(
    
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
         Text('123'),
        ],
      ))
        );
      }
}


