import 'package:flutter/material.dart';
import 'survey1.dart';

class finalpage extends StatefulWidget {
  finalpage({Key? key}) : super(key: key);

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
        body: score(),
      ),
    );
  }
}

class score extends StatefulWidget {
  score({Key? key}) : super(key: key);

  @override
  _scoreState createState() => _scoreState();
}

class _scoreState extends State<score> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('sum'),
      ],
    );
  }
}
