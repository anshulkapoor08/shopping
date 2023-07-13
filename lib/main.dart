import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shopping/files/drawer.dart';
//import 'package:carousel_pro/carousel_pro.dart';

//  my own imports
import 'package:shopping/components/horizontal_list_view.dart';
import 'package:shopping/components/products.dart';

void main() => runApp(
      const MaterialApp(
        title: "App",
        home: Myapp(),
        debugShowCheckedModeBanner: false,
      ),
    );

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: const Text(" shopping app "),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          ),
        ],
        backgroundColor: Colors.pinkAccent[400],
      ),
      drawer: MyHeaderDrawer(),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
          ),
          CarouselSlider(
            items: [
              //1st image of slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('images/p1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //2nd image of slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('images/p2.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //3rd image of slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('images/p3.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //4th image of slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('images/p4.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //5th image of slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('images/p5.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //6th image of slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('images/p6.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //7th image of slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('images/p7.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //8th image of slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('images/p8.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
            options: CarouselOptions(
              height: 180.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 400),
              viewportFraction: 0.8,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Categories',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontFamily: 'RobotoSlab',
                fontSize: 20,
                color: Colors.blueGrey,
              ),
            ),
          ),
          HorizontalList(),
          Padding(
            padding: EdgeInsets.fromLTRB(8, 25, 8, 20,),
            child: Text(
              'Recents Products',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontFamily: 'RobotoSlab',
                fontSize: 20,
                color: Colors.blueGrey,
              ),
            ),
          ),
          Container(
            height: 550,
            child: Product(),
          ),
        ],
      ),
    );
  }
}
