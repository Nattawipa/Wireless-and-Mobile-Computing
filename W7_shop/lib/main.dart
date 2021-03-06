import 'package:W4_shop/detail.dart';
import 'package:flutter/material.dart';
import 'constant.dart';
import 'cart.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

void main() => runApp(MaterialApp(
      home: MyShop(),
      debugShowCheckedModeBanner: false,
    ));

class MyShop extends StatefulWidget {
  @override
  _MyShopState createState() => _MyShopState();
}

class _MyShopState extends State<MyShop> {
  List<Widget> itemsData = [];

  void getPostData() {
    List<dynamic> data = SushiMenu;
    List<Widget> showData = [];
    data.forEach(
      (ele) => {
        showData.add(Container(
            child: RaisedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    Detail(ele['name'], ele['price'], ele['image']),
              ),
            );
          },
          child: Container(
            width: double.infinity,
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: 10,
                        minWidth: 10,
                        maxHeight: 66,
                        maxWidth: 66,
                      ),
                      child: Image.asset(
                        '${ele['image']}',
                      ),
                    ),
                    title: Text('${ele['name']}'),
                    subtitle: Text('${ele['price']}'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[],
                  ),
                ],
              ),
            ),
          ),
        )))
      },
    );
    setState(() {
      itemsData = showData;
      print(itemsData);
    });
  }

  void getData() async {
    http.Response response = await http.get(Uri.http('10.0.2.2:8080', '/'),
        headers: {"Accept": "application/json"});
    SushiMenu = json.decode(response.body);
    print(SushiMenu[0]);
    getPostData();
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      // appBar: CustomAppBar(),
      appBar: AppBar(
        backgroundColor: Colors.pink[700],
        centerTitle: true,
        title: Text(
          '🍙 Zumo Sushi 🍙',
          style: TextStyle(fontSize: 27),
        ),
        actions: <Widget>[
          //---- Button ----
          IconButton(
            icon: Icon(Icons.shopping_cart),
            tooltip: 'View a cart',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Cart(),
                ),
              );
            },
          ),
        ],
      ),
      body: Center(
          child: ListView.builder(
        itemCount: itemsData.length,
        itemBuilder: (context, index) {
          return itemsData[index];
        },
      )),
    );
  }
}
