// import 'package:flutter/material.dart';
// import 'package:miithaiwale/Constants/colors.dart';
// import 'package:miithaiwale/Pages/donate.dart';
// import 'package:miithaiwale/Pages/home.dart';
// import 'package:miithaiwale/Pages/membership.dart';
// import 'package:miithaiwale/Pages/myorder.dart';

// class BottomBar extends StatefulWidget {
//   @override
//   _BottomBarState createState() => _BottomBarState();
// }

// class _BottomBarState extends State<BottomBar> {

//   int _selectedIndex = 0;

//   static List<Widget> _widgetOptions = <Widget>[
//     Home(),
//     MyOrder(),
//     Membership(),
//     Donate(),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//   @override
  
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: AppColors.background,
//           items: const <BottomNavigationBarItem>[
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               label: ("Home"),
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.shopping_cart),
//               label: ("My Order"),
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.star_border_purple500_outlined),
//               label: ("Membership"),
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.payment),
//               label: ("Donate"),
//             )
//           ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: AppColors.selectedcolor,
//         unselectedItemColor: AppColors.unselectedcolor,
//         showSelectedLabels: true,
//         showUnselectedLabels: true,
//         type: BottomNavigationBarType.fixed,
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }