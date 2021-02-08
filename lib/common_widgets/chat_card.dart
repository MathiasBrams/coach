import 'package:flutter/material.dart';
import 'package:mentusa/extra_screens/chat_page.dart';


// chatcard is the box with the mentee/mentors icon and recent message
// displayed in the mentees and mentors pages
class ChatCard extends StatelessWidget {
  ChatCard({
    this.name,
    this.message,
    this.imagePath,
    this.timeSent
  });

  final String name;
  final String message; 
  final String imagePath;
  final String timeSent;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 4, bottom: 4),
      child: Card(
        elevation: 10,
        child: Padding(
        
          padding: EdgeInsets.only(top: 4, bottom: 4),
          child: ListTile(
            leading: CircleAvatar(backgroundColor: Colors.teal, radius: 40, backgroundImage: AssetImage(imagePath)),
            title: Padding(
              padding: EdgeInsets.only(top: 6),
              child: Text(this.name, style: TextStyle(fontWeight: FontWeight.bold))),
            subtitle: Text(this.message),
            trailing: Text(this.timeSent, textAlign: TextAlign.right),
            isThreeLine: true,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChatPage()),
              );
            },
          ),
        ),
      ),
    );
  }
}