import 'package:flutter/material.dart';
import 'package:miithaiwale/Homepage/homepage.dart';
import 'package:miithaiwale/widgets/drawer.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;

  final tabs = [
    Scaffold(
      body: SafeArea(child: HomePage()),
    ),
    Center(
      child: Text('No Favourites Added'),
    ),
    Center(
      child: Text('No Notifications'),
    ),
    Center(
      child: Text('No Notificationssssss'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: Text("MiithaiWale"),
      ),
      drawer: MyDrawer(),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        //  selectedItemColor: Color(0xff474F85),
        selectedItemColor: Color(0xff0075f6),
        unselectedItemColor: Color(0x600075f6),
        currentIndex: _currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            activeIcon: Icon(Icons.shopping_cart),
            label: 'My Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border_purple500_outlined),
            activeIcon: Icon(Icons.star_outlined),
            label: ("Pro Membership"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            activeIcon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
