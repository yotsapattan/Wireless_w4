import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Product layout demo home page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Listing")),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          ProductBox(
              name: "iPhone 12",
              description: " iPhone 12 in October 2020 alongside the smaller iPhone 12 Mini and more premium iPhone 12 Pro and Pro Max",
              price: 1000,
              image: "iphone12.jpeg"),
          ProductBox(
              name: "iPhone14 Pro",
              description: "Apple iPhone 14 Pro 128GB in Midnigh",
              price: 800,
              image: "iphone14.jpeg"),
          ProductBox(
              name: "iPhone15",
              description: "Apple iPhone 15 128GB Pinkl",
              price: 2000,
              image: "iphone15.jpeg"),
          ProductBox(
              name: "iPhone13",
              description: "iPhone 13 Pro Max",
              price: 1500,
              image: "iphone13.jpeg"),
          ProductBox(
              name: "Iphone SE",
              description: "This iPhone has passed all quality checks and is fully functional, and it has barely visible scratches on the body and display.",
              price: 100,
              image: "iphonese.jpeg"),
          ProductBox(
              name: "iPhone XR",
              description: "iPhone XR 128GB smart phone 6.1in A12 Bionic chip",
              price: 20,
              image: "iphonexr.jpeg"),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({Key? key, required this.name, required this.description, required this.price, required this.image})
    : super(key: key);

  final String name;
  final String description;
  final int price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset("assets/appimages/" + image),  // Corrected image path
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      this.name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(this.description),
                    Text("Price: " + this.price.toString()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}