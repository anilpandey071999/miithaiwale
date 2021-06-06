import 'package:flutter/material.dart';

class SweetLiked extends StatefulWidget {
  @override
  _SweetLikedState createState() => _SweetLikedState();
}

class _SweetLikedState extends State<SweetLiked> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
                child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Sweets You May Like',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5,
                      )
                  ),
                ],
              ),
            )),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      ClipRRect(
                          borderRadius: BorderRadius.circular(50.0),
                          child: Image.network(
                            'https://cdn.pixabay.com/photo/2015/12/08/00/59/ice-cream-1082237_1280.jpg',
                            height: 70,
                            width: 70,
                            fit: BoxFit.cover,
                          )),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text('Ice Cream')
                    ],
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  Column(
                    children: <Widget>[
                      ClipRRect(
                          borderRadius: BorderRadius.circular(50.0),
                          child: Image.asset(
                            'assets/burfi.jpeg',
                            height: 70,
                            width: 70,
                            fit: BoxFit.cover,
                          )),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text('Burfi')
                    ],
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  Column(
                    children: <Widget>[
                      ClipRRect(
                          borderRadius: BorderRadius.circular(50.0),
                          child: Image.asset(
                            'assets/gulabjamun.jpeg',
                            height: 70,
                            width: 70,
                            fit: BoxFit.cover,
                          )),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text('Gulab Jamun')
                    ],
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  Column(
                    children: <Widget>[
                      ClipRRect(
                          borderRadius: BorderRadius.circular(50.0),
                          child: Image.network(
                            'https://cdn.pixabay.com/photo/2015/11/23/11/54/chocolate-smoothie-1058191_1280.jpg',
                            height: 70,
                            width: 70,
                            fit: BoxFit.cover,
                          )),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text('Shake')
                    ],
                  ),
                  // SizedBox(
                  //   width: 3.0,
                  // ),
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      ClipRRect(
                          borderRadius: BorderRadius.circular(50.0),
                          child: Image.asset(
                            'assets/jalebi.jpeg',
                            height: 70,
                            width: 70,
                            fit: BoxFit.cover,
                          )),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text('Jalebi')
                    ],
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  Column(
                    children: <Widget>[
                      ClipRRect(
                          borderRadius: BorderRadius.circular(50.0),
                          child: Image.asset(
                            'assets/kajukatli.jpeg',
                            height: 70,
                            width: 70,
                            fit: BoxFit.cover,
                          )),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text('Kaju Katli')
                    ],
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  Column(
                    children: <Widget>[
                      ClipRRect(
                          borderRadius: BorderRadius.circular(50.0),
                          child: Image.asset(
                            'assets/laddoo.jpeg',
                            height: 70,
                            width: 70,
                            fit: BoxFit.cover,
                          )),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text('Laddoo')
                    ],
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  Column(
                    children: <Widget>[
                      ClipRRect(
                          borderRadius: BorderRadius.circular(50.0),
                          child: Image.asset(
                            'assets/rasgulla.jpeg',
                            height: 70,
                            width: 70,
                            fit: BoxFit.cover,
                          )),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text('Rasgulla')
                    ],
                  ),
                  // SizedBox(
                  //   width: 3.0,
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
