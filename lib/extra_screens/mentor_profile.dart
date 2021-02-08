import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:mentusa/common_widgets/action_button.dart';
import 'package:mentusa/common_widgets/mentor_bot_swipe_box.dart';
import 'package:mentusa/common_widgets/mentor_top_swipe_box.dart';
import 'package:mentusa/constants/constants.dart';
import 'package:mentusa/dummy_data_screens/bookScreen.dart';
import 'package:mentusa/dummy_data_screens/educationScreen.dart';
import 'package:mentusa/dummy_data_screens/jobsScreen.dart';
import 'package:mentusa/dummy_data_screens/mentorScreen.dart';
import 'package:mentusa/dummy_data_screens/methodScreen.dart';
import 'package:mentusa/dummy_data_screens/reviews_screen.dart';
import 'package:mentusa/dummy_data_screens/videoScreen.dart';
import 'package:mentusa/models/profile_screen.dart';

class MentorProfile extends StatefulWidget {
  @override
  _MentorProfileState createState() => _MentorProfileState();
}

// mentor profile where u explore if its something for you and book etc
// gotta figure out how to swipe between different pictures not just the same, also different structures..
// map it?

class _MentorProfileState extends State<MentorProfile> {
  @override
  Widget build(BuildContext context) {

    // creation of individual screens and list of screens after

    // very messy right now.... needs to be refactored, since screen structured so identical, but works...
    
    Widget _screen0() {
      return VideoScreen();
    }

    Widget _screen1() {
      return MethodScreen();
    }

    Widget _screen2() {
      return EducationScreen();
    }

    Widget _screen3() {
      return JobsScreen();
    }

    Widget _screen4() {
      return ReviewsScreen();
    }

    Widget _screen5() {
      return BookScreen();
    }

    Widget _screen6() {
      return MentorshipScreen();
    }

    final List<Widget> screens = [
      _screen0(),
      _screen1(),
      _screen2(),
      _screen3(),
      _screen4(),
      _screen5(),
      _screen6()
    ];


    return SafeArea(
      child: Scaffold(
        body: Swiper(
          itemBuilder: (BuildContext context, int index){
            return Column(
              children: [
                 screens[index],
                 MentorBottomSwipeBox()
              ],
            );
           
            
            // old approach of building the profile, trying to update for use with list and index swipes
            // Column(
            //   children: <Widget> [
            //     // First section of the mentor profile, shows text, video, education, booking, etc
                
            //     MentorTopSwipeBox(),

            //     // small second section of the mentor profile, shows name, category, reviews, age, etc
            //     MentorBottomSwipeBox(),
            //   ] 
            // );
          },
          itemCount: 7,
          pagination: SwiperPagination(alignment: Alignment.topCenter),
          control: SwiperControl(),
        ),
      ),
    );
  }
}






