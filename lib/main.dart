import 'package:flutter/material.dart';

import 'authentication.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFA6F6F1),
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Image.asset(
                  'assets/8ad99972-481a-4cb4-899a-81c2bb0cee59.png',
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.rate_review_outlined,
                color: Colors.black,
                size: 35.0,
              ),
            ),
          ],
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
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                  size: 35, // Changing Drawer Icon Size
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
        ),
        body: Homepage(),
      ),
    ),
  );
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String dropdownvalue = '* Select Your School';
  final int elevation = 10;

  // List of items in our dropdown menu
  var items = [
    '* Select Your School',
    'DAV',
    'DPS',
    'SRM',
    'VIT',
    'MIT',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(
            vertical: 15.0,
            horizontal: 5.0,
          ),
          width: 140.0,
          height: 140.0,
          child: Image.asset(
            'assets/icons8-school-100-removebg-preview.png',
            fit: BoxFit.fill,
          ),
        ),
        Container(
          width: 215.0,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 5,
                offset: Offset(2, 2),
              ),
            ],
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(20.0),
          ),
          margin: EdgeInsets.only(
            left: 88,
            right: 88,
          ),
          // constraints: BoxConstraints(
          //   minHeight: 13.0,
          //   minWidth: double.infinity,
          // ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
            ),
            child: DropdownButton(
              elevation: 500,

              style: TextStyle(
                fontFamily: 'Ubuntu',
                color: Colors.black,
                fontSize: 16.0,
              ),
              dropdownColor: Colors.white,
              focusColor: Colors.grey,

              // Initial Value
              value: dropdownvalue,

              // Down Arrow Icon
              icon: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 12.0,
                  ),
                  child: const Icon(Icons.keyboard_arrow_down),
                ),
              ),

              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'Select Your Category :',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Ubuntu',
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 57.0,
                  right: 35.0,
                ),
                child: SizedBox(
                  height: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      primary: Colors.grey.shade200,
                      shadowColor: Colors.blue.shade900,
                      elevation: 7.0,
                    ),
                    child: Image.asset('assets/icons8-student-64 (1).png'),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => ID_1()));
                    },
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 35.0,
                  right: 57.0,
                ),
                child: SizedBox(
                  height: 80.0,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      primary: Colors.grey.shade200,
                      shadowColor: Colors.blue.shade900,
                      elevation: 7.0,
                    ),
                    child: Image.asset('assets/icons8-teacher-64 (1).png'),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: 70,
            ),
            Text(
              "STUDENT",
              style: TextStyle(
                fontSize: 16.0,
                fontFamily: 'Ubuntu',
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 105,
            ),
            Text(
              "TEACHER",
              style: TextStyle(
                fontSize: 16.0,
                fontFamily: 'Ubuntu',
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20.0,
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 145.0, right: 145.0),
                child: SizedBox(
                  height: 85,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      primary: Colors.grey.shade200,
                      shadowColor: Colors.blue.shade900,
                      elevation: 7.0,
                    ),
                    child: Image.asset('assets/icons8-parents-64.png'),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: 170,
            ),
            Text(
              "PARENT",
              style: TextStyle(
                fontSize: 16.0,
                fontFamily: 'Ubuntu',
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 55.0,
        ),
        Center(
          child: Text(
            '2022 © TechItOut ',
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
