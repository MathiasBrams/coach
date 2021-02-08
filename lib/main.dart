import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:mentusa/constants/constants.dart';
import 'package:mentusa/home_page.dart';

/// This is the main method of app, from here execution starts.
void main() => runApp(App());

/// App widget class
class App extends StatelessWidget {
  //making list of pages needed to pass in IntroViewsFlutter constructor.
  final pages = [
    PageViewModel(
        pageColor: const Color(0xFF03A9F4),
        // iconImageAssetPath: 'assets/air-hostess.png',
        // bubble: Image.asset('assets/air-hostess.png'),
        body: Text(
          'Quickly connect with the right mentors who suit your needs',
        ),
        title: Text(
          'Mentors',
        ),
        titleTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
        bodyTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
        mainImage: Image.asset(
          'assets/images/intro/connect.jpg',
          //height: 285.0,
          width: double.infinity,
          alignment: Alignment.center,
        )),
    PageViewModel(
      pageColor: const Color(0xFF8BC34A),
      // iconImageAssetPath: 'assets/waiter.png',
      body: Text(
        'You can easily chat, call and videocall with your mentors',
      ),
      title: Text('Chat'),
      mainImage: Image.asset(
        'assets/images/intro/chat.jpg',
        // height: 285.0,
        width: double.infinity,
        alignment: Alignment.center,
      ),
      titleTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
      bodyTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
    ),
    PageViewModel(
      pageColor: const Color(0xFF607D8B),
      // iconImageAssetPath: 'assets/taxi-driver.png',
      body: Text(
        'In time you will be ready to help and become a mentor yourself!',
      ),
      title: Text('Grow'),
      mainImage: Image.asset(
        'assets/images/intro/give_back.jpg',
        // height: 285.0,
        width: double.infinity,
        alignment: Alignment.center,
      ),
      titleTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
      bodyTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mentusa', //title of app
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme.apply(
            bodyColor: kTextColor,
            displayColor: kTextColor,
          )),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),//ThemeData
      home: Builder(
        builder: (context) => IntroViewsFlutter(
          pages,
          showNextButton: true,
          showBackButton: true,
          onTapDoneButton: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ), //MaterialPageRoute
            );
          },
          pageButtonTextStyles: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ), //IntroViewsFlutter
      ), //Builder
    ); //Material App
  }
}