import 'package:flutter/material.dart';
import 'package:mentusa/extra_screens/profile_search.dart';

// mentee request bubble is the icon and text shown to display your mentee requests
// displayed in the mentees and mentors pages
class MenteeBubble extends StatelessWidget {
  const MenteeBubble({
    this.category
  });

  final String category;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 40,
              child: IconButton(
                icon: Icon(Icons.attach_money),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileSearchPage()),
                  );
                },
              ),
            ),
            Text(this.category),
          ],
        ));
  }
}
