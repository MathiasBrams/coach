import 'package:flutter/material.dart';
import 'package:mentusa/constants/constants.dart';

// card to display created "profiles" in different categories

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    this.title,
    this.category,
    this.navigation
  });

  final String title;
  final String category;
  final Function navigation;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(this.title, style: TextStyle(fontStyle: FontStyle.italic, color: kTextColor, fontSize: 18)),
        trailing: Icon(Icons.toggle_on, color: kTextColor, size: 40),
        onTap: this.navigation
      ),);
  }
}