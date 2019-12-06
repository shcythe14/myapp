import 'package:flutter/material.dart';
import 'package:myapp/pages/cart.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_cart = [
    {
      "name": "Apples",
      "picture": "images/products/apples.jpg",
      "price": 15,
      "quantity": 1,
    },
    {
      "name": "Oranges",
      "picture": "images/products/oranges.jpg",
      "price": 10,
      "quantity": 3,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: Products_on_cart.length,
        itemBuilder: (context, index) {
          return Single_cart_product(
            cart_prod_name: Products_on_cart[index]["name"],
            cart_prod_price: Products_on_cart[index]["price"],
            cart_prod_quantity: Products_on_cart[index]["quantity"],
            cart_prod_picture: Products_on_cart[index]["picture"],
          );
        });
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_quantity;

  Single_cart_product(
      {this.cart_prod_name,
      this.cart_prod_picture,
      this.cart_prod_price,
      this.cart_prod_quantity});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: new Image.asset(cart_prod_picture, width: 80.0, height: 80.0),
        title: new Text(cart_prod_name),
        subtitle: new Column(
          children: <Widget>[
            new Container(
              alignment: Alignment.topLeft,
              child: new Text(
                "\$${cart_prod_price}",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
        trailing: FittedBox(
          fit: BoxFit.fill,
          child: Column(
          children: <Widget>[
            new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){}),
            new Text("$cart_prod_quantity"), 
            new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){}),
          ],
          ),
        ),
      ),
    );
  }
}