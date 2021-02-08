import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  ActionButton({
    this.message
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
    child: Text(this.message));
  }
}