import 'package:burger_lab/model/question.dart';
import 'package:flutter/material.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _queationBank = [
    Question(
        'Only burger lover should guess\nWhich kind of burger it is?',
        'https://i.ndtvimg.com/i/2016-05/chilli-burger_625x350_41464592906.jpg',
        [
          ' Potato Corn Burger',
          'Stuffed Bean Burger',
          'Chili burger with pepper relish'
        ],
        2),
    Question(
        'Only burger lover should guess\nWhich kind of burger it is?',
        'https://i.ndtvimg.com/i/2016-05/stuffed-bean-burger_625x350_71464592156.jpg',
        [
          'Stuffed Bean Burger',
          'Chili burger with pepper relish',
          ' Potato Corn Burger'
        ],
        2),
    Question(
        'Only burger lover should guess\nWhich kind of burger it is?',
        'https://i.ndtvimg.com/i/2016-05/potato-corn-burger_625x350_51464590875.jpg',
        [
          'Stuffed Bean Burger',
          'Potato Corn Burger',
          'Chili burger with pepper relish'
        ],
        0)
  ];
  void nextQuestion() {
    if (_questionNumber < _queationBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _queationBank[_questionNumber].questionText;
  }

  String getImage() {
    return _queationBank[_questionNumber].Image;
  }

  List<String> getOptions() {
    return _queationBank[_questionNumber].options;
  }

  int getCorrectAnswer(int index) {
    return _queationBank[_questionNumber].answer;
  }

  bool isFinished() {
    if (_questionNumber >= _queationBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
