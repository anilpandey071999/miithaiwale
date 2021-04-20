import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: ("My Order"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border_purple500_outlined),
            label: ("Pro Membership"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: ("Donate"),
          )
        ]);
  }

  // Widget item({
  //   int index,
  //   Icon icon,
  //   Text text
  // }) {
  //   return IconButton(
  //     icon: icon,
  //     onPressed: () {}
  //   );
  // }
}
