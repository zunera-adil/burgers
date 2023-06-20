import 'package:http/http.dart' as http;
import 'dart:convert';

class Question {
  Question({
    this.image,
    this.question,
    this.options,
    this.correct,
  });

  String? image;
  String? question;
  List<Option>? options;
  int? correct;

  Question.fromJson(Map<String, dynamic> json) {
    question = json['question'];
    image = json['image'];
    correct = json['correct'];
    if (json['options'] != null) {
      options = <Option>[];
      json['options'].forEach((option) {
        options!.add(Option.fromJson(option));
      });
    }
  }
}

class Quiz {
  List<Question>? questions;
  Quiz({this.questions});
  Quiz.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      questions = <Question>[];
      json['data'].forEach((question) {
        questions!.add(Question.fromJson(question));
      });
    }
  }
}

Future<Quiz> fetchQuiz() async {
  final response = await http.get(
      Uri.parse('https://mocki.io/v1/7a3bd9ac-5614-47a1-a62c-1c0aa42303a8'));
  if (response.statusCode == 200) {
    var decoded = jsonDecode(response.body);
    return Quiz.fromJson(decoded);
  } else {
    throw Exception('Failed to load burgers');
  }
}

class Option {
  Option({
    this.option1,
    this.option2,
    this.option3,
  });

  String? option1;
  String? option2;
  String? option3;

  factory Option.fromJson(Map<String, dynamic> json) => Option(
        option1: json["option1"],
        option2: json["option2"],
        option3: json["option3"],
      );

  Map<String, dynamic> toJson() => {
        "option1": option1,
        "option2": option2,
        "option3": option3,
      };
}
