import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:miithaiwale/Home/customLoader.dart';
import 'package:miithaiwale/Pages/loginpage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Miithaiwale",
    home: SplashScreen(),
    theme: ThemeData(
      primaryColor: Colors.orange,
    ),
  ));
}

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      // if (FirebaseAuth.instance.currentUser == null) {
      // user not logged ==> Login Screen
      //   Navigator.pushAndRemoveUntil(context,
      //       MaterialPageRoute(builder: (_) => WalkThrough()), (route) => false);
      // } else {
      // user already logged in ==> Home Screen
      // Navigator.pushAndRemoveUntil(context,
      //     MaterialPageRoute(builder: (_) => BottomBar()), (route) => false);
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (_) => LoginPage()), (route) => false);
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "MiithaiWale",
              style: TextStyle(fontSize: 50),
            ),
            CustomLoader(),
          ],
        ),
      ),
    );
  }
}
