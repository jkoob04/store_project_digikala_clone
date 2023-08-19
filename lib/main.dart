import 'package:flutter/material.dart';

import 'data/datasource/country_data_source.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: SizedBox(
          height: 45,
          child: TextField(
            decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                hintTextDirection: TextDirection.rtl,
                hintText: 'جستجو در همه کالاها',
                fillColor: Colors.grey[350],
                filled: true),
          ),
        ),

        ///hide the titel and icons
        // title: Text('digikala'),
        // backgroundColor: Colors.red[700],
        // actions: [
        //   IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined))
        // ],
      ),
      body:
          // ListView.builder(
          //   // scrollDirection: Axis.horizontal,
          //   itemCount: 8,
          //   itemBuilder: (context, Index) {
          //     return Card(
          //       child: ListTile(
          //         onTap: () {},
          //         title: Text('aa'),
          //       ),
          //     );
          //   },
          // ),

          ///listView.bilder.i dont bild creation variable listView.
          ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            color: Colors.redAccent,
            height: 150,
            width: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (context, index) => Container(
                width: 400,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(cuntrys[index].flagImage))),
                  child: Center(
                    child: Text(cuntrys[index].name),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
