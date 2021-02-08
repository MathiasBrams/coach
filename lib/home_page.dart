
import 'package:flutter/material.dart';
import 'package:mentusa/constants/constants.dart';
import 'package:mentusa/menu_screens/browse_page.dart';

// menu pages import
import 'package:mentusa/menu_screens/mentusa_page.dart';
import 'package:mentusa/menu_screens/calendar_page.dart';
import 'package:mentusa/extra_screens/work_page.dart';
import 'package:mentusa/menu_screens/profile_page.dart';

// import third party
import 'package:animations/animations.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() =>
      _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  List<Widget> pageList = <Widget>[
    BrowsePage(),
    MentusaPage(),
    CalendarPage(),
    ProfilePage(),
  ];


  // sets the animation between pages and bottom navigation menu
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageTransitionSwitcher(
        duration: Duration(milliseconds: 800),
        transitionBuilder: (
          Widget child,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
        ) {
          return FadeThroughTransition(
            animation: animation,
            secondaryAnimation: secondaryAnimation,
            child: child,
          );
        },
        child: pageList[pageIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: pageIndex,
        showUnselectedLabels: true,
        selectedItemColor: Colors.blue[600],
        unselectedItemColor: Colors.grey[800],
        onTap: (int newValue) {
          setState(() {
            pageIndex = newValue;
          });
        
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Browse',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Calendar'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}



