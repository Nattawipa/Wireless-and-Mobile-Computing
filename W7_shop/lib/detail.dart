import 'package:W4_shop/cart.dart';
import 'package:flutter/material.dart';
import 'constant.dart';

class Detail extends StatefulWidget {
  String image;
  int price;
  String name;

  Detail(String name, int price, String image) {
    this.name = name;
    this.price = price;
    this.image = image;
  }

  @override
  _DetailState createState() => _DetailState(name, price, image);
}

class _DetailState extends State<Detail> {
  String image;
  int price;
  String name;

  _DetailState(String name, int price, String image) {
    this.name = name;
    this.price = price;
    this.image = image;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          centerTitle: true,
          // back button
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            tooltip: "Cancel and Return to List",
            onPressed: () {
              Navigator.pop(context, true);
            },
          ),
          title: Text(
            'Zumo Sushi Detail 🍣',
            style: TextStyle(fontSize: 27),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                // IMAGE
                padding: EdgeInsets.all(10),
                //margin: EdgeInsets.only(bottom: 10),
                height: 350,
                width: 393,
                child: Image.asset(
                  "$image",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                  // NAME
                  height: 85,
                  width: 393,
                  child: new Text(this.name,
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        fontSize: 30,
                        fontFamily: 'Roboto',
                      ))),
              Container(
                  // PRICE
                  height: 85,
                  width: 393,
                  child: new Text("$price" + " ฿",
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        fontSize: 30,
                        fontFamily: 'Roboto',
                      ))),
              const SizedBox(
                // Add to Cart button
                height: 30,
                width: 393,
              ),
              RaisedButton(
                onPressed: () {
                  calculateTotalPrice();
                  setState(() {
                    cart_list.add(
                      {
                        "name": this.name,
                        "price": this.price,
                        "image": this.image
                      },
                    );
                    print(cart_list);
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Cart(),
                    ),
                  );
                },
                child: const Text('Add to Cart  🛒',
                    style: TextStyle(fontSize: 20)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
