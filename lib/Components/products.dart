import 'package:flutter/material.dart';
import 'package:fooddelivery/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Burger",
      "picture": "images/products/burger.jpg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Noodles",
      "picture": "images/products/noodles.jpg",
      "old_price": 100,
      "price": 60,
    },
    {
      "name": "Pasta",
      "picture": "images/products/pasta.jpg",
      "old_price": 150,
      "price": 100,
    },
    {
      "name": "Pizza",
      "picture": "images/products/pizza.jpg",
      "old_price": 80,
      "price": 50,
    },
    {
      "name": "Sprimg Roll",
      "picture": "images/products/spring_roll.jpg",
      "old_price": 100,
      "price": 60,
    },
    {
      "name": "Triple rice",
      "picture": "images/products/triple_rice.jpg",
      "old_price": 90,
      "price": 55,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate:
          new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Single_prod(
          prod_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          prod_old_price: product_list[index]['old_price'],
          prod_price: product_list[index]['price'],
        );
      },
    );
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod(
      {this.prod_name,
      this.prod_picture,
      this.prod_old_price,
      this.prod_price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  //here passing values of products to product detials page
                  builder: (context) => new ProductDetails(
                        product_name: prod_name,
                        product_picture: prod_picture,
                        product_old_price: prod_old_price,
                        product_new_price: prod_price,
                      ))),
              child: GridTile(
                footer: Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          prod_name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
                      ),
                      new Text(
                        "\$$prod_price",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                child: Image.asset(
                  prod_picture,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )),
    );
  }
}
