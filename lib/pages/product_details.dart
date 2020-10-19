import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final products_details_name;
  final products_details_new_price;
  final products_details_old_price;
  final products_details_picture;

ProductDetails({
  this.products_details_name,
  this.products_details_new_price,
  this.products_details_old_price,
  this.products_details_picture
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text("FashApp"),
        actions: [
          IconButton(icon: Icon(Icons.search,color: Colors.white), onPressed: (){}),
          IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white), onPressed: (){})
        ],
      ),
      body: ListView(
        children: [
          Container(
            height :300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.products_details_picture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(widget.products_details_name),
                  title: Row(
                     children: [
                       Expanded(
                         child: Text("\₹${widget.products_details_new_price}",
                         style: TextStyle(
                           color: Colors.grey,decoration: TextDecoration.lineThrough 
                         ),
                         )
                        
                       ),
                       Expanded(
                         child: Text("\₹${widget.products_details_old_price}",
                         style: TextStyle(
                           fontWeight: FontWeight.bold,fontSize: 16.0,color: Colors.green
                         ),
                         )
                       ),
                     ],
                  ),
                ),
              ),
              ),
          ),

  //              ====================== the first button ======================
        Row(
          children: [

 //              ====================== the size button ======================
            Expanded(
              child: MaterialButton(onPressed: (){
                 showDialog(context: context,builder: (context) {
                  return AlertDialog(
                    title: Text("Size"),
                    content: Text("Choose the size"),
                    actions: [
                      MaterialButton(onPressed: (){
                        Navigator.of(context).pop(context);
                      },
                      child: Text("close"),
                      )
                    ],
                  );
                });
              },
              color: Colors.white,
              textColor: Colors.grey,
              child: Row(
                children: [
                  Expanded(
                    child: Text("Size"),
                    ),
                    Expanded(
                    child: Icon(Icons.arrow_drop_down),
                    ),
                ],
              ),
              ),
            ),
            Expanded(
              child: MaterialButton(onPressed: (){
                 showDialog(context: context,builder: (context) {
                  return AlertDialog(
                    title: Text("Color"),
                    content: Text("Choose the size"),
                    actions: [
                      MaterialButton(onPressed: (){
                        Navigator.of(context).pop(context);
                      },
                      child: Text("close"),
                      )
                    ],
                  );
                });
              },
              color: Colors.white,
              textColor: Colors.grey,
              child: Row(
                children: [
                  Expanded(
                    child: Text("color"),
                    ),
                    Expanded(
                    child: Icon(Icons.arrow_drop_down),
                    ),
                ],
              ),
              ),
            ),
            Expanded(
              child: MaterialButton(onPressed: (){
                 showDialog(context: context,builder: (context) {
                  return AlertDialog(
                    title: Text("Quantity"),
                    content: Text("Choose the size"),
                    actions: [
                      MaterialButton(onPressed: (){
                        Navigator.of(context).pop(context);
                      },
                      child: Text("close"),
                      )
                    ],
                  );
                });
              },
              color: Colors.white,
              textColor: Colors.grey,
              child: Row(
                children: [
                  Expanded(
                    child: Text("Qty"),
                    ),
                    Expanded(
                    child: Icon(Icons.arrow_drop_down),
                    ),
                ],
              ),
              ),
            ),
          ],
        ),



        //              ====================== the second button ======================
        Row(
          children: [
            Expanded(
              child: MaterialButton(onPressed: (){},
              color: Colors.red,
              textColor: Colors.white,
              elevation: 0.2,
              child: Text("Buy Now"), 
              ),
              ),
             IconButton(icon: Icon(Icons.add_shopping_cart,color: Colors.red,),),
             IconButton(icon: Icon(Icons.favorite_border,color: Colors.red,),) 

          ],
        ), 
         Divider(),
        ListTile(
          title: Text("product details"),
          subtitle: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. "),
        ),
         Divider(),
        Row(
          children: [
            Padding(padding: const EdgeInsets.fromLTRB(12.0,5.0,5.0,5.0),
            child: Text("Product name",style: TextStyle(color: Colors.grey),),
            ),
            Padding(padding: EdgeInsets.all(5.0),
            child: Text(widget.products_details_name),
            )
          ],
        ),
        Row(
          children: [
            Padding(padding: const EdgeInsets.fromLTRB(12.0,5.0,5.0,5.0),
            child: Text("Product brand",style: TextStyle(color: Colors.grey),),
            ),

//          Remember to create product brand  
            Padding(padding: EdgeInsets.all(5.0),
            child: Text("Brand X"),)
          ],
        ),

 //        ADD THE PRODUCT CONDITION       
        Row(
          children: [
            Padding(padding: const EdgeInsets.fromLTRB(12.0,5.0,5.0,5.0),
            child: Text("Product condition",style: TextStyle(color: Colors.grey),),
            ),
             Padding(padding: EdgeInsets.all(5.0),
            child: Text("Brand X"),)
          ],
        ),
        ],
      ),
    );
  }
}