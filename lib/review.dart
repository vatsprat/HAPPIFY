import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ID_4 extends StatefulWidget {
  @override
  State<ID_4> createState() => _ID_4State();
}

class _ID_4State extends State<ID_4> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFA6F6F1),
        appBar: AppBar(
          leading: IconButton(
            alignment: Alignment.centerLeft,
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 35.0,
            ),
          ),
          title: const Text(
            "HAPPIFY",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              fontSize: 20.0,
              fontFamily: 'Ubuntu',
            ),
          ),
          centerTitle: true,
          backgroundColor: Color(0xFFE8FFFF),
        ),
        body: StarDisplay(),
      ),
    );
  }
}

class StarDisplay extends StatefulWidget {
  const StarDisplay({Key? key}) : super(key: key);

  @override
  _StarDisplayState createState() => _StarDisplayState();
}

class _StarDisplayState extends State<StarDisplay> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 20.0,
        ),
        Text(
          'Its All In The Response!!',
          style: TextStyle(
            fontSize: 22,
            fontFamily: 'Ubuntu',
          ),
        ),
        SizedBox(
          height: 40.0,
        ),
        Text(
          'Rate Our App',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            fontFamily: 'Raleway',
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Card(
            color: Colors.white70,
            elevation: 10.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            child: RatingBar.builder(
              initialRating: 2.5,
              minRating: 0.5,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star_outline_rounded,
                color: Colors.amberAccent,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
          ),
        ),
        SizedBox(
          height: 90.0,
        ),
        Text(
          'Drop in your suggestions',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            fontFamily: 'Raleway',
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Container(
            height: 120.0,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)),
              color: Colors.white70,
              child: TextField(
                maxLength: 60,
                decoration: InputDecoration(
                  labelText: 'Drop Your Valuable Feedback',
                  labelStyle: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Ubuntu'),
                  contentPadding: const EdgeInsets.all(40.0),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Submit',
              )),
        )
      ],
    );
  }
}
