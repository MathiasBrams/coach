import 'package:flutter/material.dart';
import 'package:mentusa/constants/constants.dart';
import 'package:mentusa/extra_screens/search_category_page.dart';


class SearchIcon extends StatelessWidget {
  const SearchIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(icon: Icon(Icons.search_outlined, size: 30, color: kTextColor),
      onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SearchCategoryPage()),
          );
      },
    );
  }
}