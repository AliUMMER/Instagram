import 'package:flutter/material.dart';
import 'package:insta_new/ui/new_post.dart';

import 'Home_pge.dart';
import 'Profile_page.dart';
import 'Reels_page.dart';
import 'Search_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const InstagramNavigationBar(),
    );
  }
}

class InstagramNavigationBar extends StatefulWidget {
  const InstagramNavigationBar({super.key});

  @override
  _InstagramNavigationBarState createState() => _InstagramNavigationBarState();
}

class _InstagramNavigationBarState extends State<InstagramNavigationBar> {
  int _selectedIndex = 0;

  // Pages for each navigation item
  final List<Widget> _listOfWidgets = <Widget>[
    HomePage(),
    SearchPage(),
    NewPostPage(),
    ReelsPage(),
    InstagramProfilePage(),
  ];

  // Method to handle tap on navigation items
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _listOfWidgets[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: _buildCustomIcon(Icons.home, _selectedIndex == 0),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _buildCustomIcon(Icons.search, _selectedIndex == 1),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: _buildCustomIconWithAsset(
                'assets/add.png', _selectedIndex == 2),
            label: 'new post',
          ),
          BottomNavigationBarItem(
            icon: _buildCustomIconWithAsset(
                'assets/video.png', _selectedIndex == 3),
            label: 'Reels',
          ),
          BottomNavigationBarItem(
            icon: _buildCustomIcon(Icons.person, _selectedIndex == 4),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.white, // Prevent color fill
        unselectedItemColor: Colors.grey, // Keep icons consistent
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }

  // Custom widget to build an icon for Material icons
  Widget _buildCustomIcon(IconData iconData, bool isSelected) {
    return Icon(
      iconData,
      color: isSelected ? Colors.white : Colors.grey,
    );
  }

  // Custom widget to build an icon for Asset images
  Widget _buildCustomIconWithAsset(String assetPath, bool isSelected) {
    return ImageIcon(
      AssetImage(assetPath),
      color: isSelected ? Colors.white : Colors.grey,
    );
  }
}
