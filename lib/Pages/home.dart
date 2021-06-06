import 'package:flutter/material.dart';
import 'package:miithaiwale/Home/near_by_shops.dart';
import 'package:miithaiwale/Home/sweet_liked.dart';
import 'package:miithaiwale/Home/search_bar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  TabController tabController;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SearchBar(),
          SweetLiked(),
          NearByShop(),
        ],
      ),
    );
  }
}
