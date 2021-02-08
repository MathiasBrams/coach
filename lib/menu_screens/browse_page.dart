import 'package:flutter/material.dart';
import 'package:mentusa/common_widgets/category_card.dart';
import 'package:mentusa/common_widgets/chat_card.dart';
import 'package:mentusa/common_widgets/search_box.dart';
import 'package:mentusa/common_widgets/search_icon.dart';
import 'package:mentusa/constants/constants.dart';
import 'package:mentusa/extra_screens/mentor_profile.dart';
import 'package:mentusa/extra_screens/profile_search.dart';
import 'package:mentusa/extra_screens/search_category_page.dart';
import 'package:mentusa/menu_screens/mentusa_page.dart';

class BrowsePage extends StatefulWidget {
  @override
  _BrowsePageState createState() => _BrowsePageState();
}

class _BrowsePageState extends State<BrowsePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Row(children: [
            //Image.asset('assets/icons/48x48.png'),
            Text('Mentusa', style: TextStyle(color: kTextColor, fontWeight: FontWeight.normal)),
          ]),
          backgroundColor: Colors.white,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Icon(Icons.notifications, color: kTextColor),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 12.0, left: 12, right: 12),
          child: ListView(
            children: [
              SearchBox(),
              SizedBox(height: 20),


              BrowseDescription(title: 'Popular Categories'),
              SizedBox(height: 5),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                  BrowseCardMain(title: 'Career'),
                  BrowseCardMain(title: 'Leadership'),
                  BrowseCardMain(title: 'Communication')
                ] ),
              ),
              SizedBox(height: 20),


              BrowseDescription(title: 'Popular Mentors'),
              SizedBox(height: 5),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                  BrowseCardBig(name: 'Nair Taiana', category: 'Emotional Therapy', imagePath: 'assets/images/profiles/businesswoman.jpg',
                    numberOfReviews: '88', rating: '4.8', price: '30€'
                  ),
                  BrowseCardBig(name: 'Vladimir Putin', category: 'Leadership', imagePath: 'assets/images/profiles/businessman.jpg',
                    numberOfReviews: '42', rating: '4.6', price: '200€'
                  ),
                  BrowseCardBig(name: 'Donald Trump', category: 'Sales', imagePath: 'assets/images/profiles/entrepreneurman.jpg',
                    numberOfReviews: '20', rating: '4.5', price: '80€'
                  ),
                ] ),
              ),
              SizedBox(height: 20),

              BrowseDescription(title: 'Based on your preferences'),
              SizedBox(height: 5),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                  BrowseCardMain(title: 'Career'),
                  BrowseCardMain(title: 'Leadership'),
                  BrowseCardMain(title: 'Communication')
                ] ),
              ),        
              SizedBox(height: 20),
            ],
          ),
        )

      ),
    );
  }
}

class BrowseCardMain extends StatelessWidget {
  const BrowseCardMain({
    this.title
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileSearchPage()),
              );
            },
      child: Card(child: Container(
        color: Colors.white,
        height: kScreenHeight(context) * 0.2,
        width: kScreenWidth(context) * 0.4,
        child: Column(children: [
          Container(
            height: kScreenHeight(context) * 0.12,
            child: Image.asset('assets/icons/icon_ios.png')
          ),
          Container(
            height: kScreenHeight(context) * 0.08,
            child: Center(child: Text(this.title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)))
          )
        ],)
        ),
      ),
    );
  }
}

class BrowseCardBig extends StatelessWidget {
  const BrowseCardBig({
    this.name,
    this.category,
    this.imagePath,
    this.rating,
    this.price,
    this.numberOfReviews
  });

  final String name;
  final String category;
  final String imagePath;
  final String rating;
  final String price;
  final String numberOfReviews;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MentorProfile()),
              );
            },
      child: Card(child: Container(
        color: Colors.white,
        height: kScreenHeight(context) * 0.35,
        width: kScreenWidth(context) * 0.60,
        child: Column(children: [
          Container(
            height: kScreenHeight(context) * 0.18,
            child: Image.asset(this.imagePath)
          ),
          Container(
            height: kScreenHeight(context) * 0.17,
            child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(this.name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                                Text('30'),
                                Icon(Icons.verified_user, color: Colors.green),
                                // row to ensure stars and review rating go together
                                
                              ],),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(this.category)),
                              SizedBox(height: 10),
                              Row(
                                  children: [
                                    Text(this.rating),
                                  Icon(Icons.star, color: Colors.yellow[600]),
                                  Icon(Icons.star, color: Colors.yellow[600]),
                                  Icon(Icons.star, color: Colors.yellow[600]),
                                  Icon(Icons.star, color: Colors.yellow[600]),
                                  Icon(Icons.star_half, color: Colors.yellow[600]),
                                ],),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(this.numberOfReviews+' reviews'),                        
                                    Text('from €'+this.price)
                                  ],),
                          ],),
                      )
          )
        ],)
        ),
      ),
    );
  }
}

class BrowseDescription extends StatelessWidget {
  const BrowseDescription({
    this.title
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Text(this.title, style: TextStyle(fontSize: 20)),
      Text('See all', style: TextStyle(color: Colors.blue[500]))
    ]);
  }
}
