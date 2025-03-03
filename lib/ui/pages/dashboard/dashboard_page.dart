import 'package:flutter/material.dart';
import 'package:my_instagram/ui/pages/main/add_post/add_post_page.dart';
import 'package:my_instagram/ui/pages/main/explore/explore_page.dart';
import 'package:my_instagram/ui/pages/main/home/home_page.dart';
import 'package:my_instagram/ui/pages/main/profile/profile_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _currentIndex = 0;
  final List<Widget> _widgets = [
    const HomePage(),
    const ExplorePage(),
    const AddPostPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/instagram_logo.png',
          fit: BoxFit.cover,
          width: 140,
          height: 40,
        ),
        centerTitle: true,
      ),
      body: _widgets.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.blueGrey,
          currentIndex: _currentIndex,
          elevation: 2.0,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore), label: 'Explore'),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add Post'),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle), label: 'Profile'),
          ]),
    );
  }
}
