import 'package:flutter/material.dart';
import 'package:mentusa/common_widgets/category_card.dart';
import 'package:mentusa/common_widgets/chat_card.dart';
import 'package:mentusa/common_widgets/search_box.dart';
import 'package:mentusa/constants/constants.dart';

class SearchCategoryPage extends StatefulWidget {
  @override
  _SearchCategoryPageState createState() => _SearchCategoryPageState();
}

class _SearchCategoryPageState extends State<SearchCategoryPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Search', style: TextStyle(color: kTextColor, fontWeight: FontWeight.normal)),
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: kTextColor),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Icon(Icons.search, color: kTextColor),
              )
            ],
            bottom: TabBar(
                  tabs: [
                    Tab(child: Text('Categories', style: TextStyle(color: kTextColor, fontSize: 20))),
                    Tab(child: Text('Mentors', style: TextStyle(color: kTextColor, fontSize: 20))),
                  ],
          ),),
          body: TabBarView(
              children: [
                _buildCategories(context),
                _buildMentors(context),
              ],
            ),

        ),
      ),
    );
  }
}


Widget _buildCategories(BuildContext context) {

    return ListView(
          children: [
            CategoryCard(category: 'Career', icon: Icons.business, description: 'Promotion, Change, Development'),
            CategoryCard(category: 'Entrepreneurship', icon: Icons.business_center, description: 'Business plans, Pitching, Startup'),
            CategoryCard(category: 'Leadership', icon: Icons.business_center, description: 'Individuals, Teams, Companies'),
            CategoryCard(category: 'Sales', icon: Icons.money, description: 'B2C, B2B, Marketing'),
            CategoryCard(category: 'Personal Finance', icon: Icons.attach_money, description: 'Budgetting, Investing, Debt'),
            CategoryCard(category: 'Personal Development', icon: Icons.timeline, description: 'Growth, Discipline, Goals'),
            CategoryCard(category: 'Emotions', icon: Icons.mood_bad, description: 'Stress, Anger, Loneliness, Sadness'),
            CategoryCard(category: 'Relationships', icon: Icons.person, description: 'Communication, Breakups, Dating'),
            CategoryCard(category: 'Addictions', icon: Icons.cancel, description: 'Cigarettes, Alcohol, Cannabis'),
          ],
        );
}

Widget _buildMentors(BuildContext context) {

    return ListView(
          children: [
            CategoryCard(category: 'Most Popular Mentors', icon: Icons.business, description: 'Mentors who had the most Mentees.'),
            CategoryCard(category: 'Top Rated Mentors', icon: Icons.business_center, description: 'Mentors with the highest ratings'),
            CategoryCard(category: 'Career Mentors', icon: Icons.timeline, description: 'Mentors to help with your career'),
            CategoryCard(category: 'Coaches', icon: Icons.money, description: 'Mentors to coach you'),
            CategoryCard(category: 'Therapists', icon: Icons.attach_money, description: 'Mentors to give you therapy'),
            CategoryCard(category: 'Psychologists', icon: Icons.mood_bad, description: 'Mentors with a psychology background'),
            CategoryCard(category: 'Everyone', icon: Icons.person, description: 'A good mix of everything'),
          ],
        );
}