import 'package:flutter/material.dart';

List<BottomNavigationBarItem> navItems(List<Icon> icons, List<String> labels) {
  return [
    BottomNavigationBarItem(
      icon: icons[0],
      label: labels[0],
    ),
    BottomNavigationBarItem(
      icon: icons[1],
      label: labels[1],
    ),
    BottomNavigationBarItem(
      icon: icons[2],
      label: labels[2],
    ),
    BottomNavigationBarItem(
      icon: icons[3],
      label: labels[3],
    ),
    BottomNavigationBarItem(
      icon: icons[4],
      label: labels[4],
    ),
  ];
}
