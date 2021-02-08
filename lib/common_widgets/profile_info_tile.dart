import 'package:flutter/material.dart';
import 'package:mentusa/constants/constants.dart';
import 'package:mentusa/extra_screens/update_profile_page.dart';
import 'package:mentusa/update_profile_screens/update_jobs_screen.dart';

// tile to show basic information of user like jobs, education, etc and to allow editing

class ProfileInfoTile extends StatelessWidget {
  const ProfileInfoTile({
    this.title,
    this.icon,
    this.iconFunction,
    this.navigation
  });

  final String title;
  final IconData icon;
  final IconData iconFunction;
  final Function navigation;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: kScreenWidth(context) * 0.92,
          child: Card(
           child: ListTile(
              leading: Icon(this.icon, color: kTextColor),
              title: Text(this.title, style: TextStyle(fontSize: 18)),
              trailing: Icon(this.iconFunction),
              onTap: this.navigation
          )),
        ),
      ],
    );
  }
}