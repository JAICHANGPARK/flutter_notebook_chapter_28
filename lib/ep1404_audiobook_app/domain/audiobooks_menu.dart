import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AudiobooksMenu {
  IconData? iconData;
  String? title;
  int? index;

  AudiobooksMenu({
    this.iconData,
    this.title = "?",
    this.index,
  });
}

List<AudiobooksMenu> audiobooksMenu = [
  AudiobooksMenu(iconData: Icons.home_filled, index: 0),
  AudiobooksMenu(iconData: Icons.apps, index: 1),
  AudiobooksMenu(iconData: Icons.bookmarks_outlined, index: 2),
  AudiobooksMenu(iconData: Icons.person_outlined, index: 3),
];
