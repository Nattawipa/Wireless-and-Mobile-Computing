import 'package:flutter/material.dart';
import 'constant.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  List<Widget> itemsData = [];
  void getPostData() {
    List<dynamic> data = cart_list;
    List<Widget> showData = [];
    data.forEach(
      (ele) => {
        showData.add(
          Container(
            margin: EdgeInsets.all(2),
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
                ],
              ),
            ),
          ),
        )
      },
    );
    setState(() {
      calculateTotalPrice();
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          // back button
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            tooltip: "Cancel and Return to Previous Page",
            onPressed: () {
              Navigator.pop(context, true);
            },
          ),
          title: Text(
            'Total 🛒 Price : $totalPrice',
            style: TextStyle(fontSize: 27),
          ),
        ),
        body: Center(
          child: ListView.builder(
            itemCount: itemsData.length,
            itemBuilder: (context, index) {
              return itemsData[index];
            },
          ),
        ),
      ),
    );
  }
}
