import 'package:flutter/material.dart';

class Cart_Products extends StatefulWidget {
  @override
  _Cart_ProductsState createState() => _Cart_ProductsState();
}

class _Cart_ProductsState extends State<Cart_Products> {
  var Products_on_the_cart = [
    {
      "name": "Burger",
      "picture": "images/products/burger.jpg",
      "price": 85,
      "quantity": 1,
    },
    {
      "name": "Noodles",
      "picture": "images/products/noodles.jpg",
      "price": 60,
      "quantity": 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Products_on_the_cart.length,
      itemBuilder: (context, index) {
        return Single_cart_product(
          cart_prod_name: Products_on_the_cart[index]["name"],
          cart_prod_picture: Products_on_the_cart[index]["picture"],
          cart_prod_price: Products_on_the_cart[index]["price"],
          cart_prod_qty: Products_on_the_cart[index]["quantity"],
        );
      },
    );
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_qty;

  Single_cart_product({
    this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_price,
    this.cart_prod_qty,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        // ======== Leading Section ========
        leading: Image.asset(
          cart_prod_picture,
          width: 100.0,
          height: 100.0,
        ),
        // ======== Title section =========
        title: Text(cart_prod_name),
        // ======== Subtitle section =========
        subtitle: Column(
          children: [
            //======   This is for the Price   ======
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "\$$cart_prod_price",
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            )
          ],
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {},
            ),
            Text("$cart_prod_qty"),
            IconButton(
                icon: Icon(
                  Icons.remove,
                ),
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
