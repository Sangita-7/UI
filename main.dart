// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:number_inc_dec/number_inc_dec.dart';

void main() => runApp(MyApp());

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
  int _ratingBarMode = 1;
  double _initialRating = 2.0;

  IconData? _selectedIcon;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Icon(
                        IconData(0xe15e,
                            fontFamily: 'MaterialIcons',
                            matchTextDirection: true),
                        color: Colors.black,
                        size: 30),
                  ),
                  // background image and bottom contents
                  Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(5.0),
                        height: 250.0,
                        alignment: Alignment.center,
                        child: CircleAvatar(
                          radius: 100,
                          backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/1591447/pexels-photo-1591447.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'), //image url
                        ),
                      ),
                    ],
                  ),
                  // Profile image
                  Positioned(
                    top:
                        150.0, // (background container size) - (circle height / 2)
                    child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    Theme.of(context).scaffoldBackgroundColor),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  'https://www.pixsy.com/wp-content/uploads/2021/04/ben-sweet-2LowviVHZ-E-unsplash-1.jpeg',
                                )))),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Icon(Icons.segment_sharp,
                        color: Colors.black, size: 30),
                  )
                ],
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
              Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: const [
                          WidgetSpan(
                            child: Icon(Icons.folder_open,
                                color: Colors.green, size: 20),
                          ),
                          TextSpan(
                              text: 'SAVED',
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
                    alignment: Alignment.center,
                    child: Text("|",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold)),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: const [
                          TextSpan(
                              text: 'POINTS',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              )),
                          WidgetSpan(
                            child: Icon(Icons.star_outlined,
                                color: Colors.deepOrange, size: 20),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
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
                        textAlign: TextAlign.center,
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
                      height: 100,
                      width: 100,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            children: const [
                              TextSpan(
                                  text: 'Barack Obama',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: _ratingBar(_ratingBarMode),
                        ),
                        SizedBox(
                          child: TextButton(
                            style: TextButton.styleFrom(
                              primary: Colors.black,
                              backgroundColor: Colors.white,
                            ),
                            onPressed: () {},
                            child: Text('Check for it Individually',
                                style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text("Rs. 590",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold)),
                        Align(
                          alignment: Alignment.center,
                          child: Example(),
                        ),
                      ],
                    ),
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
                      height: 100,
                      width: 100,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            children: const [
                              TextSpan(
                                  text: 'Jim Morrison',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: _ratingBar(_ratingBarMode),
                        ),
                        SizedBox(
                          child: TextButton(
                            style: TextButton.styleFrom(
                              primary: Colors.black,
                              backgroundColor: Colors.white,
                            ),
                            onPressed: () {},
                            child: Text('Check for it Individually',
                                style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text("Rs. 880",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold)),
                        Align(
                          alignment: Alignment.center,
                          child: Example(),
                        ),
                      ],
                    ),
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
                      height: 100,
                      width: 100,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            children: const [
                              TextSpan(
                                  text: 'The Classical Music',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: _ratingBar(_ratingBarMode),
                        ),
                        SizedBox(
                          child: TextButton(
                            style: TextButton.styleFrom(
                              primary: Colors.black,
                              backgroundColor: Colors.white,
                            ),
                            onPressed: () {},
                            child: Text('Check for it Individually',
                                style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text("Rs. 1000",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold)),
                        Align(
                          alignment: Alignment.center,
                          child: Example(),
                        ),
                      ],
                    ),
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

  Widget _ratingBar(int mode) {
    return RatingBar.builder(
      initialRating: _initialRating,
      minRating: 1,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 15.0,
      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
      itemBuilder: (context, _) => Icon(
        _selectedIcon ?? Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        setState(() {});
      },
      updateOnDrag: true,
    );
  }
}

class Example extends StatelessWidget {
  const Example({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NumberInputPrefabbed.roundedButtons(
      controller: TextEditingController(),
      buttonArrangement: ButtonArrangement.incRightDecLeft,
      incDecBgColor: Colors.transparent,
      scaleHeight: 1.0,
      scaleWidth: 1.0,
      incIcon: Icons.add,
      decIcon: Icons.remove,
    );
  }
}
