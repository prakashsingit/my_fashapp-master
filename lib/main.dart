import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
// my own imports
import 'compoents/horizontal_listtview.dart';
import 'compoents/products.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel =new Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),
          AssetImage('images/m2.jpg'),
        ],
        autoplay: false,
        // animationCurve: Curves.fastOutSlowIn,
        // animationDuration: Duration(milliseconds: 1000),
      dotSize: 4.0,
      // dotColor: Colors.red,
      indicatorBgPadding: 2.0,
      ),
    );
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
      drawer: Drawer(
        child: ListView(
          children: [
//       header
         UserAccountsDrawerHeader(
           accountName: Text("Himanshu Yadav"),
            accountEmail: Text("Himanshu@gmail.com"),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, color: Colors.white,),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.red,
            ),
         ),
         InkWell(
           onTap: (){},
          child: ListTile(
           title: Text("Home Page"),
           leading: Icon(Icons.home),   
           ),
         ),


         InkWell(
           onTap: (){},
          child: ListTile(
           title: Text("My account"),
           leading: Icon(Icons.person),   
           ),
         ),


         InkWell(
           onTap: (){},
          child: ListTile(
           title: Text("My orders"),
           leading: Icon(Icons.shopping_basket),   
           ),
         ),


         InkWell(
           onTap: (){},
          child: ListTile(
           title: Text("Categories"),
           leading: Icon(Icons.dashboard),   
           ),
         ),

         InkWell(
           onTap: (){},
          child: ListTile(
           title: Text("Favourites"),
           leading: Icon(Icons.favorite),   
           ),
         ),

         Divider(),

         InkWell(
           onTap: (){},
          child: ListTile(
           title: Text("Settings"),
           leading: Icon(Icons.settings,color: Colors.blue,),   
           ),
         ),

         InkWell(
           onTap: (){},
          child: ListTile(
           title: Text("About"),
           leading: Icon(Icons.help,color: Colors.green),   
           ),
         ),
          ],
        ),
      ),
      body: ListView(
        children: [
          // image carousel begins here
          image_carousel,
          //padding
          Padding(padding: EdgeInsets.all(2.0),
          child: Text("Categories"),
          ),
          // horizontal listview begins here 
          HorizontalList(),
          Padding(padding: EdgeInsets.all(20.0),
          child: Text("Recent Products"),
          ),
          // gridview
          Container(
            height: 320,
            child: Products(),
          )
        ],
      ),
    );
  }
}

