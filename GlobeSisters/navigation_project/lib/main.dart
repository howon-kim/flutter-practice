import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'feed.dart';
import 'post.dart';
import 'profile.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social Network',
      home: MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedItem = 0;
  var _pages = [Feed(), Post(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _pages[_selectedItem]),
      bottomNavigationBar: GNav(
        gap: 12,
        tabs: [
          GButton(
            icon: Icons.feed,
            text: 'Feed'
            ),
          GButton(
            icon: Icons.post_add,
            text: 'Post'
            ),
          GButton(
            icon: Icons.person,
            text: 'Profile'
            )
        ],
        onTabChange: (index) {
          setState(() {
            _selectedItem = index;
          });
        }
      ),
    );
  }
}
