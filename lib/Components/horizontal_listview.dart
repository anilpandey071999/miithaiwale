import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            image_location: 'images/cats/bk.png',
            image_caption: 'Burger King',
          ),
          Category(
            image_location: 'images/cats/cafe.png',
            image_caption: 'Cafe',
          ),
          Category(
            image_location: 'images/cats/hotel.png',
            image_caption: 'Hotels',
          ),
          Category(
            image_location: 'images/cats/macd.png',
            image_caption: 'Mac Donald\'s',
          ),
          Category(
            image_location: 'images/cats/dom.png',
            image_caption: 'Domino\'s',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              height: 80.0,
              width: 100.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                image_caption,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
