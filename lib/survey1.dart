import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_homepage/final.dart';
import 'survey_brain.dart';
import 'final.dart';

SurveyBrain surveybrain = SurveyBrain();

class Surveys extends StatelessWidget {
  const Surveys({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        body: Q1(),
      ),
    );
  }
}

class Q1 extends StatefulWidget {
  @override
  _Q1State createState() => _Q1State();
}

class _Q1State extends State<Q1> {
  int number1 = 1;
  int number = 1;

  int a = 1;
  double sum = 0.0;

  double calculate(int number1) {
    sum += number1 * surveybrain.getQuestionAnswer();
    if (surveybrain.isfinished() == true && a >= 15)
      Navigator.push(context,
          new MaterialPageRoute(builder: (context) => new finalpage()));

    return 0;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 340,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
              ),
              child: Text(
                '$a/15',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 250,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              elevation: 8.0,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    surveybrain.getQuestionText(),
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: Color(0xFF406882),
            inactiveTrackColor: Color(0xFF32BFBF),
            thumbColor: Color(0xFF6998AB),
            overlayColor: Color(0x29EB1555),
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
          ),
          child: Slider(
            value: number.toDouble(),
            divisions: 10,
            min: 1,
            max: 10,
            onChanged: (double newValue) {
              setState(() {
                number = newValue.round();
              });
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.teal,
              ),
              child: Text(
                number.toString(),
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Ubuntu',
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 88,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(120, 45),
                  ),
                  onPressed: () {
                    setState(() {
                      a = a + 1;
                      surveybrain.check();

                      number1 = number;
                      calculate(number1);
                      print(sum);
                      number = 1;
                    });
                  },
                  child: Text(
                    'NEXT',
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.w900,
                    ),
                  )),
            ),
          ],
        )
      ],
    );
  }
}
