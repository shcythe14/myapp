import 'package:flutter/material.dart';
import 'package:myapp/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Apples",
      "picture": "images/products/apples.jpg",
      "price": 15,
    },
    {
      "name": "Carrots",
      "picture": "images/products/carrots.jpg",
      "price": 18,
    },
    {
      "name": "Cabbage",
      "picture": "images/products/cabbage.jpg",
      "price": 30,
    },
    {
      "name": "Chicken Drumstick",
      "picture": "images/products/chickend.jpg",
      "price": 60,
    },
    {
      "name": "Beef Steak",
      "picture": "images/products/beef.jpg",
      "price": 100,
    },
    {
      "name": "Mango",
      "picture": "images/products/mango.jpg",
      "price": 10,
    },
    {
      "name": "Pork Chop",
      "picture": "images/products/Pork.jpg",
      "price": 80,
    },
    {
      "name": "Eggplant",
      "picture": "images/products/eggplant.jpg",
      "price": 12,
    },
    {
      "name": "Oranges",
      "picture": "images/products/oranges.jpg",
      "price": 10,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate:
          new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_price: product_list[index]['price'],
          ),
        );
      },
    );
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_price;

  Single_prod({
    this.prod_name,
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
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => new ProductDetails(
                      product_detail_name: prod_name,
                      product_detail_picture: prod_picture,
                      product_detail_price: prod_price,
                    ))),
            child: GridTile(
              footer: Container(
                color: Colors.white,
                child: new Row(children: <Widget>[
                  Expanded(
                    child: Text(prod_name,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                  ),
                  new Text("\$${prod_price}",style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),)
                ],)
              ),
              child: Image.asset(prod_picture, fit: BoxFit.cover),
            ),
          ),
        ),
      ),
    );
  }
}
