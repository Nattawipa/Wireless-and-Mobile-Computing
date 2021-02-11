import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    ));

double _price = 0.0;

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyShop();
  }
}

// class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
//   CustomAppBar({Key key})
//       : preferredSize = Size.fromHeight(kToolbarHeight),
//         super(key: key);

//   final Size preferredSize;
//   @override
//   _CustomAppBarState createState() => _CustomAppBarState();
// }

// class _CustomAppBarState extends State<CustomAppBar> {
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: Colors.pink[700],
//       centerTitle: true,
//       title: Text(
//         'Zumo Sushi $_price',
//         style: TextStyle(fontSize: 27),
//       ),
//     );
//   }
// }

class MyShop extends StatefulWidget {
  @override
  _MyShopState createState() => _MyShopState();
}

class _MyShopState extends State<MyShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink[50],
        // appBar: CustomAppBar(),
        appBar: AppBar(
          backgroundColor: Colors.pink[700],
          centerTitle: true,
          title: Text(
            'Zumo Sushi $_price',
            style: TextStyle(fontSize: 27),
          ),
        ),
        body: Center(
          child: ListView(
            itemExtent: 132,
            children: [
              //----- no.1 -----
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
                            'assets/images/1Nigiri.png',
                          ),
                        ),
                        title: Text('Kani Kama Nigiri'),
                        subtitle: Text('30 ฿'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          //---- Button ----
                          IconButton(
                            icon: Icon(Icons.add),
                            tooltip: 'Increase number by 1',
                            onPressed: () {
                              //---- Accumulated price ----
                              setState(() {
                                _price += 30;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //----- no.2 -----
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
                            'assets/images/2Hamachi.jpg',
                          ),
                        ),
                        title: Text('Hamachi Nigiri'),
                        subtitle: Text('70 ฿'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.add),
                            tooltip: 'Increase number by 1',
                            onPressed: () {
                              setState(() {
                                _price += 70;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //----- no.3 -----
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
                            'assets/images/3Saba.jpg',
                          ),
                        ),
                        title: Text('Saba Bouzushi'),
                        subtitle: Text('60 ฿'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.add),
                            tooltip: 'Increase number by 1',
                            onPressed: () {
                              setState(() {
                                _price += 60;
                              });
                            },
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //----- no.4 -----
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
                            'assets/images/4ebi.jpg',
                          ),
                        ),
                        title: Text('Ebi Nigiri'),
                        subtitle: Text('70 ฿'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.add),
                            tooltip: 'Increase number by 1',
                            onPressed: () {
                              setState(() {
                                _price += 70;
                              });
                            },
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //----- no.5 -----
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
                            'assets/images/5Unagi.jpg',
                          ),
                        ),
                        title: Text('Unagi Nigiri'),
                        subtitle: Text('60 ฿'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.add),
                            tooltip: 'Increase number by 1',
                            onPressed: () {
                              setState(() {
                                _price += 60;
                              });
                            },
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //----- no.6 -----
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
                            'assets/images/6Tamago.jpg',
                          ),
                        ),
                        title: Text('Tamago Nigiri'),
                        subtitle: Text('30 ฿'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.add),
                            tooltip: 'Increase number by 1',
                            onPressed: () {
                              setState(() {
                                _price += 30;
                              });
                            },
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //----- no.7 -----
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
                            'assets/images/7Maguro.png',
                          ),
                        ),
                        title: Text('Maguro Nigiri'),
                        subtitle: Text('60 ฿'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.add),
                            tooltip: 'Increase number by 1',
                            onPressed: () {
                              setState(() {
                                _price += 60;
                              });
                            },
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //----- no.8 -----
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
                            'assets/images/8Kani.jpg',
                          ),
                        ),
                        title: Text('Kani Salad Nigiri'),
                        subtitle: Text('40 ฿'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.add),
                            tooltip: 'Increase number by 1',
                            onPressed: () {
                              setState(() {
                                _price += 40;
                              });
                            },
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //----- no.9 -----
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
                            'assets/images/9Aburi.png',
                          ),
                        ),
                        title: Text('Aburi Salmon Nigiri'),
                        subtitle: Text('70 ฿'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.add),
                            tooltip: 'Increase number by 1',
                            onPressed: () {
                              setState(() {
                                _price += 70;
                              });
                            },
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //----- no.10 -----
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
                            'assets/images/10Salmon.jpg',
                          ),
                        ),
                        title: Text('Salmon Nigiri'),
                        subtitle: Text('60 ฿'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.add),
                            tooltip: 'Increase number by 1',
                            onPressed: () {
                              setState(() {
                                _price += 60;
                              });
                            },
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //----- end of card items section -----
            ],
          ),
        ));
  }
}

// class MyShop extends StatefulWidget {
//   @override
//   _MyShopState createState() => _MyShopState();
// }

// class _MyShopState extends State<MyShop> {
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       itemExtent: 132,
//       children: [
//         //----- no.1 -----
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
//                       'assets/images/1Nigiri.png',
//                     ),
//                   ),
//                   title: Text('Kani Kama Nigiri'),
//                   subtitle: Text('30 ฿'),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: <Widget>[
//                     IconButton(
//                       icon: Icon(Icons.add),
//                       tooltip: 'Increase number by 1',
//                       onPressed: () {
//                         setState(() {
//                           _price += 30;
//                         });
//                       },
//                     ),
//                     Text('$_price'),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//         //----- no.2 -----
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
//                       'assets/images/2Hamachi.jpg',
//                     ),
//                   ),
//                   title: Text('Hamachi Nigiri'),
//                   subtitle: Text('70 ฿'),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: <Widget>[
//                     TextButton(
//                       child: const Text('MORE DETAILS'),
//                       onPressed: () {/* ... */},
//                     ),
//                     const SizedBox(width: 8),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//         //----- no.3 -----
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
//                       'assets/images/3Saba.jpg',
//                     ),
//                   ),
//                   title: Text('Saba Bouzushi'),
//                   subtitle: Text('60 ฿'),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: <Widget>[
//                     TextButton(
//                       child: const Text('MORE DETAILS'),
//                       onPressed: () {/* ... */},
//                     ),
//                     const SizedBox(width: 8),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//         //----- no.4 -----
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
//                       'assets/images/4ebi.jpg',
//                     ),
//                   ),
//                   title: Text('Ebi Nigiri'),
//                   subtitle: Text('70 ฿'),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: <Widget>[
//                     TextButton(
//                       child: const Text('MORE DETAILS'),
//                       onPressed: () {/* ... */},
//                     ),
//                     const SizedBox(width: 8),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//         //----- no.5 -----
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
//                       'assets/images/5Unagi.jpg',
//                     ),
//                   ),
//                   title: Text('Unagi Nigiri'),
//                   subtitle: Text('60 ฿'),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: <Widget>[
//                     TextButton(
//                       child: const Text('MORE DETAILS'),
//                       onPressed: () {/* ... */},
//                     ),
//                     const SizedBox(width: 8),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//         //----- no.6 -----
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
//                       'assets/images/6Tamago.jpg',
//                     ),
//                   ),
//                   title: Text('Tamago Nigiri'),
//                   subtitle: Text('30 ฿'),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: <Widget>[
//                     TextButton(
//                       child: const Text('MORE DETAILS'),
//                       onPressed: () {/* ... */},
//                     ),
//                     const SizedBox(width: 8),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//         //----- no.7 -----
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
//                       'assets/images/7Maguro.png',
//                     ),
//                   ),
//                   title: Text('Maguro Nigiri'),
//                   subtitle: Text('60 ฿'),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: <Widget>[
//                     TextButton(
//                       child: const Text('MORE DETAILS'),
//                       onPressed: () {/* ... */},
//                     ),
//                     const SizedBox(width: 8),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//         //----- no.8 -----
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
//                       'assets/images/8Kani.jpg',
//                     ),
//                   ),
//                   title: Text('Kani Salad Nigiri'),
//                   subtitle: Text('40 ฿'),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: <Widget>[
//                     TextButton(
//                       child: const Text('MORE DETAILS'),
//                       onPressed: () {/* ... */},
//                     ),
//                     const SizedBox(width: 8),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//         //----- no.9 -----
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
//                       'assets/images/9Aburi.png',
//                     ),
//                   ),
//                   title: Text('Aburi Salmon Nigiri'),
//                   subtitle: Text('70 ฿'),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: <Widget>[
//                     TextButton(
//                       child: const Text('MORE DETAILS'),
//                       onPressed: () {/* ... */},
//                     ),
//                     const SizedBox(width: 8),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//         //----- no.10 -----
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
//                       'assets/images/10Salmon.jpg',
//                     ),
//                   ),
//                   title: Text('Salmon Nigiri'),
//                   subtitle: Text('60 ฿'),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: <Widget>[
//                     TextButton(
//                       child: const Text('MORE DETAILS'),
//                       onPressed: () {/* ... */},
//                     ),
//                     const SizedBox(width: 8),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//         //----- end -----
//       ],
//     );
//   }
// }
