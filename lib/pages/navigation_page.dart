import 'package:flutter/material.dart';
import 'package:globalbankuiclone/pages/card_page.dart';
import 'package:globalbankuiclone/pages/favorite_page.dart';
import 'package:globalbankuiclone/pages/home_page.dart';
import 'package:globalbankuiclone/pages/more_page.dart';
import 'package:globalbankuiclone/pages/qr_page.dart';
import 'package:globalbankuiclone/widgets/navigation_widget.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _currentIndex = 0;

  void _ontap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  List<Widget> pages = [
    const HomePage(),
    const CardPage(),
    const QrPage(),
    const FavoritePage(),
    const MorePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'GlobalSmart+',
          style: TextStyle(color: Colors.blue),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
          IconButton(
            onPressed: () {},
            icon: const CircleAvatar(
              foregroundImage: AssetImage('assets/profile.jpg'),
            ),
          ),
        ],
      ),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.white,
        showUnselectedLabels: true,
        onTap: (int index) => _ontap(index),
        items: navItems(
          [
            const Icon(Icons.home),
            const Icon(Icons.card_membership),
            const Icon(Icons.qr_code_rounded),
            const Icon(Icons.stars_rounded),
            const Icon(Icons.apps),
          ],
          [
            'Home',
            'Card',
            'Qr',
            'Favorite',
            'More',
          ],
        ),
      ),
    );
  }
}
