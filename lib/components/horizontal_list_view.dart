import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            'images/icons/bags.png',
            'Bags',
          ),
          Category(
            'images/icons/dress.png',
            'Dress',
          ),
          Category(
            'images/icons/phone-case.png',
            'Mobile',
          ),
          Category(
            'images/icons/shirt.png',
            'Shirts',
          ),
          Category(
            'images/icons/shoes.png',
            'Shoes',
          ),
          Category(
            'images/icons/shorts.png',
            'Shorts',
          ),
          Category(
            'images/icons/suit.png',
            'Suit',
          ),




        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;
  Category(
    this.image_location,
    this.image_caption,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100,
              height: 100,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                image_caption,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
