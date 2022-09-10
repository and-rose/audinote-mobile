import 'package:audinote_mobile/screens/profile.dart';
import 'package:audinote_mobile/screens/tracks.dart';
import 'package:flutter/material.dart';

import 'screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Audinote',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 72.0,
            fontWeight: FontWeight.bold,
          ),
          headline6: TextStyle(
            fontSize: 36.0,
            fontWeight: FontWeight.w300,
            fontFamily: 'Roboto',
          ),
          bodyText2: TextStyle(
            fontSize: 14.0,
            fontFamily: 'Roboto',
          ),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'My Tracks'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPageIndex = 0;

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
        shape: const CircleBorder(),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentPageIndex]['widget'],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
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
        ],
      ),
      floatingActionButton: screens[currentPageIndex]['fab'],
    );
  }
}
