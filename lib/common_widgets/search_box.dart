import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:mentusa/constants/constants.dart';
import 'package:mentusa/extra_screens/search_category_page.dart';
import 'package:mentusa/extra_screens/search_filter.dart';

// standard widget for type box
// should be adjustable with constructors in time


class SearchBox extends StatelessWidget {
  const SearchBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: kScreenWidth(context) * 0.8,
        child: Card(
          elevation: 5,
          child: ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchCategoryPage()),
                );
            },
            
            leading: Icon(Icons.search, color: Colors.grey[500]),
            title: Text('What are you searching for?', style: TextStyle(color: Colors.grey[500])),
          ),
        ));
  }
}