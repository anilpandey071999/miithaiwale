import 'package:flutter/material.dart';
import 'package:awesome_loader/awesome_loader.dart';

class CustomLoader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AwesomeLoader(
      loaderType: AwesomeLoader.AwesomeLoader2,
      color: Color(0xff0075f6),
    );
  }
}

class CustomLoaderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AwesomeLoader(
      loaderType: AwesomeLoader.AwesomeLoader3,
      color: Color(0xff0075f6),
    );
  }
}
