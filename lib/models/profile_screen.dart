import 'dart:ui';

import 'package:meta/meta.dart';

// Profile Screen model to fill out screens on a mentor profile with required data

// data needs to eventually come from firebase or similar not hardcoded

class ProfileScreen {
  ProfileScreen({this.id, this.title, this.text, this.screenColor});
  final int id;
  final String title;
  final String text;
  final Color screenColor;

}