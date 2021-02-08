import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:mentusa/constants/constants.dart';
import 'package:mentusa/extra_screens/mentor_profile.dart';

// the box showing the profiles of different mentors in your search results

class SearchResultSwipeBox extends StatelessWidget {
  const SearchResultSwipeBox({this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MentorProfile()),
            );
          },
          child: Swiper(
            pagination: SwiperPagination(
                builder: SwiperPagination.dots, alignment: Alignment.topCenter),
            control: SwiperControl(),
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                    child: Column(children: [
                  Container(
                    height: kScreenHeight(context) * 0.25,
                    width: double.infinity,
                    child: Image.asset(this.imagePath),
                  ),
                  // bottom part of search box with info
                  Container(
                    height: kScreenHeight(context) * 0.12,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Nair Taiana', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                              Text('30'),
                              Icon(Icons.verified_user, color: Colors.green),
                              // row inside the row to ensure stars and review rating go together
                              Row(
                                children: [
                                  Text('4.5'),
                                Icon(Icons.star, color: Colors.yellow[600]),
                                Icon(Icons.star, color: Colors.yellow[600]),
                                Icon(Icons.star, color: Colors.yellow[600]),
                                Icon(Icons.star, color: Colors.yellow[600]),
                                Icon(Icons.star_half, color: Colors.yellow[600]),
                              ],)
                            ],),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Emotional Therapy'),
                                // row inside the row to ensure icon and review number go together
                                Row(children: [
                                  Text('88 reviews'),
                                  Icon(Icons.arrow_drop_down)
                                ],)
                              ],)
                        ],),
                    )
                    ),
                ]),
              );
            },
          ),
        ),
      ),
    );
  }
}
