import 'package:flutter/material.dart';
import 'package:shopnear/seller_screen/cart_screen.dart';
import 'package:shopnear/seller_screen/seller_home_screen.dart';
import 'package:shopnear/seller_screen/seller_profile_screen.dart';

class SellerBottomBarScreen extends StatefulWidget {
  static const routeName = '/BottomBarScreen';

  @override
  _SellerBottomBarScreenState createState() => _SellerBottomBarScreenState();
}

class _SellerBottomBarScreenState extends State<SellerBottomBarScreen> {
  List _pages = [
    SellerHomeScreen(),
    SellerCartScreen(),
    SellerUserScreen(),
  ];

  /* List<Map<String, Object>> _pages;
  int _selectedIndex = 0;
  @override
  void initState() {
    _pages = [
      {'page': Home(), 'title': 'Home Screen'},
      {'page': User(), 'title': 'User Screen'},
    ];
    super.initState();
  }
 */

  int _selectedIndex = 0;
  void _selectedPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
          onTap: _selectedPage,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.black,
          selectedItemColor: Color(0xff53B175),
          currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              tooltip: 'Home',
              label: 'Home',
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.youtube_searched_for),
            //   tooltip: 'Explore',
            //   label: 'Explore',
            // ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore_sharp),
              tooltip: 'Explore',
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              tooltip: 'User',
              label: 'User',
            ),
          ],
        ),
      ),
    );
  }
}
