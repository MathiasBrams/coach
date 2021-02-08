import 'package:flutter/material.dart';
import 'package:mentusa/constants/constants.dart';
import 'package:mentusa/extra_screens/profile_search.dart';

// box to display different categories
// cant decide if its better with card and elevation or container with box

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    this.category,
    this.description,
    this.icon
  });

  final String category;
  final String description;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        
        leading: Icon(icon, color: Colors.blue[400], size: 30),
        title: (Text(this.category, style: TextStyle(color: kTextColor, fontSize: 20, fontWeight: FontWeight.w500))),
        subtitle: Text(this.description, style: TextStyle(color: kGreySecondaryColor)),
        onTap: () {
          Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileSearchPage()),
              );
        }
      ),
    );
  }
}