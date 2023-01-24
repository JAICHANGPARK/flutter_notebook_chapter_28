import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AudiobooksMenu {
  IconData? iconData;
  String? title;

  AudiobooksMenu({this.iconData, this.title = "?"});
}

List<AudiobooksMenu> audiobooksMenu = [
  AudiobooksMenu(
    iconData: Icons.home_filled,
  ),
  AudiobooksMenu(
    iconData: Icons.apps,
  ),
  AudiobooksMenu(
    iconData: Icons.bookmarks_outlined,
  ),
  AudiobooksMenu(
    iconData: Icons.person_outlined,
  ),
];
