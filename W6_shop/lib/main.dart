import 'package:W4_shop/detail.dart';
import 'package:flutter/material.dart';
import 'constant.dart';
import 'cart.dart';

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
  // void getPostData() {
  //   List<dynamic> data = SushiMenu;
  //   List<Widget> showData = [];
  //   data.forEach(
  //     (ele) => {
  //       showData.add(
  //         Container(
  //           margin: EdgeInsets.all(2),
  //           child: Card(
  //             child: Column(
  //               mainAxisSize: MainAxisSize.min,
  //               children: <Widget>[
  //                 ListTile(
  //                   leading: ConstrainedBox(
  //                     constraints: BoxConstraints(
  //                       minHeight: 10,
  //                       minWidth: 10,
  //                       maxHeight: 66,
  //                       maxWidth: 66,
  //                     ),
  //                     child: Image.asset(
  //                       '${ele['image']}',
  //                     ),
  //                   ),
  //                   title: Text('${ele['name']}'),
  //                   subtitle: Text('${ele['price']}'),
  //                 ),
  //                 Row(
  //                   mainAxisAlignment: MainAxisAlignment.end,
  //                   children: <Widget>[
  //                     //---- Button ----
  //                     RaisedButton(
  //                       child: const Text('More Details',
  //                           style: TextStyle(fontSize: 20)),
  //                       onPressed: () {
  //                         Navigator.push(
  //                           context,
  //                           MaterialPageRoute(
  //                             builder: (context) => Detail(
  //                                 ele['name'], ele['price'], ele['image']),
  //                           ),
  //                         );
  //                       },
  //                     ),
  //                     //---- End Button Section ----
  //                   ],
  //                 ),
  //               ],
  //             ),
  //           ),
  //         ),
  //       )
  //     },
  //   );
  //   setState(() {
  //     itemsData = showData;
  //     print(itemsData);
  //   });
  // }
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

  @override
  void initState() {
    super.initState();
    getPostData();
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
