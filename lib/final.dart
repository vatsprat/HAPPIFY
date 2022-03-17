import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'survey1.dart';

class finalpage extends StatefulWidget {
  String mydata;
  finalpage({Key? key, required this.mydata}) : super(key: key);

  @override
  State<finalpage> createState() => _finalpageState();
}

class _finalpageState extends State<finalpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFA6F6F1),
        appBar: AppBar(
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
        body: score(
          data: widget.mydata,
        ),
      ),
    );
  }
}

class score extends StatefulWidget {
  String data;
  score({Key? key, required this.data}) : super(key: key);

  @override
  _scoreState createState() => _scoreState();
}

class _scoreState extends State<score> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/clip-meter.png',
          width: 150.0,
          height: 150.0,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            color: Colors.grey.shade300,
            elevation: 20.0,
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                width: double.infinity,
                height: 250,
                child: Card(
                  elevation: 10.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Your School\'s',
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                            letterSpacing: 1.0,
                            fontFamily: 'Raleway'),
                      ),
                      Text(
                        'Happiness Index is :',
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                            letterSpacing: 1.0,
                            fontFamily: 'Raleway'),
                      ),
                      Text(
                        '${(widget.data)}%',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 25,
                            letterSpacing: 1.0,
                            fontFamily: 'Ubuntu'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Text(
                              'We recommend you to :',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'Ubuntu'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.all(10.0),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.end,
        //     children: [
        //       Image.asset(
        //         'assets/s12-removebg-preview.png',
        //         height: 90.0,
        //         width: 90.0,
        //       ),
        //     ],
        //   ),
        // ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/clip-school-competitions.png',
              height: 167.0,
              width: 200.0,
            ),
          ],
        ),
      ],
    );
  }
}
