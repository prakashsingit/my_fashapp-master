import 'package:flutter/material.dart';
import 'package:shopapp/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list=[
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 800,
      "price": 600,
    },
    {
       "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 700,
      "price": 400,
    },
    {
       "name": "Black Dress",
      "picture": "images/products/dress2.jpeg",
      "old_price": 999,
      "price": 540,
    },
    {
       "name": "high Heels for Women",
      "picture": "images/products/hills1.jpeg",
      "old_price": 1600,
      "price": 900,
    },
    {
       "name": "Heels",
      "picture": "images/products/hills2.jpeg",
      "old_price": 1400,
      "price": 690,
    },
{
       "name": "Men's Track",
      "picture": "images/products/pants1.jpg",
      "old_price": 999,
      "price": 699,
    },
{
       "name": "Nike Track",
      "picture": "images/products/pants2.jpeg",
      "old_price": 1999,
      "price": 899,
    },
{
       "name": "Casual Shoe",
      "picture": "images/products/shoe1.jpeg",
      "old_price": 800,
      "price": 499,
    },
{
       "name": "Skirt",
      "picture": "images/products/skt1.jpg",
      "old_price": 875,
      "price": 650,
    },
{
       "name": "Pink Skirt",
      "picture": "images/products/skt2.jpeg",
      "old_price": 780,
      "price": 490,
    },
{
       "name": "kya hai ye?",
      "picture": "images/products/c1.jpg",
      "old_price": 700,
      "price": 400,
    },
{
       "name": "bhai ye bhi kya hai?",
      "picture": "images/products/IMG_1266.JPG",
      "old_price": 700,
      "price": 400,
    },
{
       "name": "White T-Shirt for Men",
      "picture": "images/products/m1.jpeg",
      "old_price": 780,
      "price": 560,
    },
{
       "name": "Jacket for men",
      "picture": "images/products/m2.jpg",
      "old_price": 6000,
      "price": 3999,
    },
{
       "name": "Leather Purse for Women",
      "picture": "images/products/w1.jpeg",
      "old_price": 4000,
      "price": 2999,
    },
{
       "name": "Round Neck T-Shirt for Women",
      "picture": "images/products/w3.jpeg",
      "old_price": 830,
      "price": 549,
    },
{
       "name": "Women Watch",
      "picture": "images/products/w4.jpeg",
      "old_price": 1499,
      "price": 899,
    },

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index){
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
    {
      this.prod_name,
      this.prod_picture,
      this.prod_old_price,
      this.prod_price
    }
  );

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: ()=>Navigator.of(context).push(MaterialPageRoute(
              // we are passing thee details to product details page
              builder: (context)=>new ProductDetails(
              products_details_name: prod_name,
              products_details_new_price: prod_price,
              products_details_old_price: prod_old_price,
              products_details_picture: prod_picture,
            ))),
            child: GridTile(
              footer: Container(
                color: Colors.white,
                child: new Row(children: <Widget>[
                  Expanded(child: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                  ),
                  new Text("\₹${prod_price}" , style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),)
                ],)
              ),
              child: Image.asset(prod_picture),
            ),
          ),
        )),
    );
  }
}