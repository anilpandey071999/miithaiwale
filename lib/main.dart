import 'package:flutter/material.dart';

import 'Homepage/homepage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Miithaiwale",
    home: HomePage(),
    theme: ThemeData(
      primaryColor: Colors.orange,
    ),
  ));
}
