// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <
                Widget>[
          Expanded(
            child: CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/1591447/pexels-photo-1591447.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
            ),
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: const [
                TextSpan(
                    text: 'Kakashi Hatake',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    )),
                WidgetSpan(
                  child: Icon(Icons.military_tech_outlined, size: 20),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text("Saved",
                    textAlign: TextAlign.right,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                Icon(Icons.star_rounded, size: 20),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.all(Radius.circular(40.0))),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      children: const [
                        WidgetSpan(
                          child: Icon(Icons.shopping_bag_rounded,
                              color: Colors.pink, size: 20),
                        ),
                        TextSpan(
                            text: 'MY CART (3)',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      children: const [
                        TextSpan(
                            text: 'Check Out-All',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            )),
                        WidgetSpan(
                          child: Icon(Icons.arrow_forward,
                              color: Colors.black, size: 20),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Image.network(
                  'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1600357110i/55361205._UY2560_SS2560_.jpg',
                  height: 150,
                  width: 150,
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: const [
                          TextSpan(
                              text: 'Barack Obama',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      child: TextButton(
                          child: Text(
                            'Check for it individually',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                backgroundColor: Colors.cyan,
                                fontSize: 15.0),
                          ),
                          onPressed: () {
                            // ignore: avoid_print
                            print('Pressed');
                          }),
                    )
                  ],
                ),
              ),
              Expanded(
                child: const Text("Rs. 450",
                    textAlign: TextAlign.right,
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
              )
            ],
          )),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Image.network(
                  'https://images-na.ssl-images-amazon.com/images/I/71qcEejm0dL.jpg',
                  height: 150,
                  width: 150,
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: const [
                          TextSpan(
                              text: 'Jim Morrison',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      child: TextButton(
                          child: Text(
                            'Check for it individually',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                backgroundColor: Colors.cyan,
                                fontSize: 15.0),
                          ),
                          onPressed: () {
                            // ignore: avoid_print
                            print('Pressed');
                          }),
                    )
                  ],
                ),
              ),
              Expanded(
                child: const Text("Rs. 1000",
                    textAlign: TextAlign.right,
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
              )
            ],
          )),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Image.network(
                  'https://images-na.ssl-images-amazon.com/images/I/91zLOdC4kuL.jpg',
                  height: 150,
                  width: 150,
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: const [
                          TextSpan(
                              text: 'The Classical Music',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      child: TextButton(
                          child: Text(
                            'Check for it individually',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                backgroundColor: Colors.cyan,
                                fontSize: 15.0),
                          ),
                          onPressed: () {
                            // ignore: avoid_print
                            print('Pressed');
                          }),
                    )
                  ],
                ),
              ),
              Expanded(
                child: const Text("Rs. 880",
                    textAlign: TextAlign.right,
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
              )
            ],
          )),
          SizedBox(
            height: 45,
            child: Text("Continue Shopping",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20.0,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold)),
          ),
        ]),
      ),
    );
  }
}
