import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  var product_list = [
    {
      "name": "Sports_tighty",
      "picture": "recents_p/a1.jpeg",
      "old_price": "560",
      "price": "450",
    },
    {
      "name": "pants",
      "picture": "images/recents_p/bp2.jpeg",
      "old_price": "980",
      "price": "730",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_old_price: product_list[index]['old_price'],
            prod_picture: product_list[index]['image'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final  prod_picture;
  final prod_old_price;
  final prod_price;
  Single_prod({
    this.prod_name,
    this.prod_old_price,
    this.prod_picture,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: () {},
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    prod_name,
                    style: TextStyle(fontWeight: FontWeight.w800),
                  ),
                ),
              ),
            child: Image.asset(
              prod_picture !=  null ? prod_picture : "Hello",


              // prod_picture,
               fit: BoxFit.cover,
             ),
            ),
          ),
        ),
      ),
    );
  }
}
