import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:mentusa/update_profile_screens/update_aboutme_screen.dart';
import 'package:mentusa/update_profile_screens/update_education_screen.dart';
import 'package:mentusa/update_profile_screens/update_guide_screen.dart';
import 'package:mentusa/update_profile_screens/update_hours_screen.dart';
import 'package:mentusa/update_profile_screens/update_jobs_screen.dart';
import 'package:mentusa/update_profile_screens/update_languages_screen.dart';
import 'package:mentusa/update_profile_screens/update_referals_screen.dart';
import 'package:mentusa/update_profile_screens/update_skills_screen.dart';

class UpdateProfilePage extends StatefulWidget {
  @override
  _UpdateProfilePageState createState() => _UpdateProfilePageState();
}

// mentor profile where u explore if its something for you and book etc
// gotta figure out how to swipe between different pictures not just the same, also different structures..
// map it?

class _UpdateProfilePageState extends State<UpdateProfilePage> {
  @override
  Widget build(BuildContext context) {

    // creation of individual screens and list of screens after

    // very messy right now.... needs to be refactored, since screen structured so identical, but works...
    
    Widget _screenGuide() {
      return UpdateGuideScreen();
    }
    
    
    Widget _screen0() {
      return UpdateJobsScreen();
    }

    Widget _screen1() {
      return UpdateEducationScreen();
    }

    Widget _screen2() {
      return UpdateHoursScreen();
    }

    Widget _screen3() {
      return UpdateLanguagesScreen();
    }

    Widget _screen4() {
      return UpdateSkillsScreen();
    }

    Widget _screen5() {
      return UpdateAboutMeScreen();
    }

    Widget _screen6() {
      return UpdateReferralsScreen();
    }

    final List<Widget> screens = [
      _screenGuide(),
      
      
      _screen4(),
      _screen3(),
      _screen2(),
      _screen5(),
      _screen0(),
      _screen1(),
      _screen6()
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
          itemCount: 8,
          pagination: SwiperPagination(alignment: Alignment.topCenter),
          control: SwiperControl(),
        ),
      ),
    );
  }
}






