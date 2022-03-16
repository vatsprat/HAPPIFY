import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Color(0xFFA6F6F1),
      appBar: AppBar(
        leading: IconButton(
          alignment: Alignment.centerLeft,
          onPressed: () {},
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
      body: ID(),
    ),
  ));
}

class ID extends StatefulWidget {
  const ID({Key? key}) : super(key: key);

  @override
  _IDState createState() => _IDState();
}

class _IDState extends State<ID> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            height: 120,
            width: 120,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/icons8-teacher-64 (1).png'),
              backgroundColor: Colors.white,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "Enter Your FacultyID",
            style: TextStyle(
              letterSpacing: 1.0,
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70.0, right: 70.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'FacultyID',
                alignLabelWithHint: true,
              ),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Container(
            width: 100,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Submit'),
              style: ElevatedButton.styleFrom(
                elevation: 8.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
