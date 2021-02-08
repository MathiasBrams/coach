import 'package:flutter/material.dart';
import 'package:mentusa/constants/constants.dart';

// standard widget for type box
// should be adjustable with constructors in time


class TypeBox extends StatelessWidget {
  const TypeBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kScreenWidth(context) * 0.4,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: TextButton(
          child: Text('Type a message'),
        ));
  }
}