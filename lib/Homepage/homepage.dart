import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:miithaiwale/widgets/near_by_shops.dart';
import 'package:miithaiwale/widgets/sweet_liked.dart';
import 'package:miithaiwale/widgets/search_bar.dart';

import 'BottomAppBar.dart';
import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SearchBar(),
        SweetLiked(),
        NearByShop(),
      ],
    );
  }
}
