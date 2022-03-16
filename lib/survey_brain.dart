import 'question.dart';

class SurveyBrain {
  int _questionnumber = 0;
  double _finalweightage = 1.241;
  List<Question> _questionbank = [
    Question('How would you rate the safety/security of school?', 0.1),
    Question(
        'Do the prospect of sibling/cousin studying in same school as you makes you happy?',
        0.09),
    Question(
        'Does the financial status of your family affects your day to day life in School?',
        0.1),
    Question(
        'How easy/comfortable you are in approaching the management of your school',
        0.011),
    Question(
        'Do you feel pressurized because of day to day activities at school?',
        0.065),
    Question('Does your school have periodic health visits/checkup?', 0.084),
    Question('Are you able to properly interact in class when needed?', 0.1),
    Question(
        'Are the mandatory attendance guidelines affecting your extra-curricular actvities? ',
        0.065),
    Question(
        'Are you able to properly utilize the school resources for your learning?',
        0.065),
    Question(
        'Do you think school toilets are cleaned propely and timely?', 0.1),
    Question(
        'Are you happy with the sports infrastructure and related opportunities provided by the school?',
        0.1),
    Question(
        'Do you feel that physical environment of School is welcoming and pleasant ?',
        0.076),
    Question('Are you able to understand what\'s thought in class?', 0.11),
    Question('Are you happy/comfortable with time table?', 0.1),
    Question('How comfortable are you in communicating with Teachers?', 0.075),
  ];

  void check() {
    if (_questionnumber < _questionbank.length - 1) {
      _questionnumber++;
    }
  }

  String getQuestionText() {
    return _questionbank[_questionnumber].questionText;
  }

  double getQuestionAnswer() {
    return _questionbank[_questionnumber - 1].questionAnswer;
  }

  bool isfinished() {
    if (_questionnumber >= _questionbank.length - 1)
      return true;
    else
      return false;
  }
}
