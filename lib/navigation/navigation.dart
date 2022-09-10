import 'package:flutter/material.dart';

import '../screens/home.dart';
import '../screens/profile.dart';
import '../screens/tracks.dart';

const destinations = <Widget>[
  NavigationDestination(
    selectedIcon: Icon(Icons.home),
    icon: Icon(Icons.home_outlined),
    label: 'Home',
  ),
  NavigationDestination(
    selectedIcon: Icon(Icons.album),
    icon: Icon(Icons.album_outlined),
    label: 'Tracks',
  ),
  NavigationDestination(
    selectedIcon: Icon(Icons.account_circle),
    icon: Icon(Icons.account_circle_outlined),
    label: 'Profile',
  ),
];

final List<Map<String, dynamic>> screens = [
  {
    'title': 'Home',
    'widget': const HomeScreen(),
    'actions': <Widget>[],
    'fab': null,
  },
  {
    'title': 'Tracks',
    'widget': const TracksScreen(),
    'actions': <Widget>[
      IconButton(
        icon: const Icon(Icons.search),
        onPressed: () {},
      ),
    ],
    'fab': FloatingActionButton(
      onPressed: () => {debugPrint("FAB pressed")},
      tooltip: 'Upload Track',
      child: const Icon(
        Icons.file_upload_outlined,
      ),
    ),
  },
  {
    'title': 'Profile',
    'widget': const ProfileScreen(),
    'actions': <Widget>[
      IconButton(
        icon: const Icon(Icons.edit),
        onPressed: () {},
      ),
    ],
    'fab': null,
  }
];
