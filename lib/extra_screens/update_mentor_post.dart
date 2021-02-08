import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:mentusa/update_mentor_posts/hello_screen.dart';
import 'package:mentusa/update_mentor_posts/update_basics_screen.dart';
import 'package:mentusa/update_mentor_posts/update_info_screen.dart';
import 'package:mentusa/update_mentor_posts/update_mentor_screen.dart';
import 'package:mentusa/update_mentor_posts/update_prices_screen.dart';
import 'package:mentusa/update_profile_screens/update_aboutme_screen.dart';
import 'package:mentusa/update_profile_screens/update_education_screen.dart';
import 'package:mentusa/update_profile_screens/update_guide_screen.dart';
import 'package:mentusa/update_profile_screens/update_hours_screen.dart';
import 'package:mentusa/update_profile_screens/update_jobs_screen.dart';
import 'package:mentusa/update_profile_screens/update_languages_screen.dart';
import 'package:mentusa/update_profile_screens/update_referals_screen.dart';
import 'package:mentusa/update_profile_screens/update_skills_screen.dart';

class UpdateMentorPost extends StatefulWidget {
  @override
  _UpdateMentorPostState createState() => _UpdateMentorPostState();
}

// where you create mentor post

class _UpdateMentorPostState extends State<UpdateMentorPost> {
  @override
  Widget build(BuildContext context) {

    // creation of individual screens and list of screens after

    // very messy right now.... needs to be refactored, since screen structured so identical, but works...
    
    Widget _screenGuide() {
      return HelloScreen();
    }
    
    
    Widget _screen0() {
      return UpdateMentorPostBasics();
    }

    Widget _screen1() {
      return UpdateMentorPostInfo();
    }

    Widget _screen2() {
      return UpdateMentorPostPrices();
    }

    Widget _screen3() {
      return UpdateMentorPostMentorship();
    }

    final List<Widget> screens = [
      _screenGuide(),
      
      
      _screen0(),
      _screen1(),
      _screen2(),
      _screen3(),
    ];


    return SafeArea(
      child: Scaffold(
        body: Swiper(
          itemBuilder: (BuildContext context, int index){
            return Column(
              children: [
                 screens[index],
                 
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
          itemCount: 5,
          pagination: SwiperPagination(alignment: Alignment.topCenter),
          control: SwiperControl(),
        ),
      ),
    );
  }
}






