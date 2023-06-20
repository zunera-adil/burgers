import 'package:burger_lab/api.dart';
import 'package:flutter/material.dart';

class Quizz extends StatefulWidget {
  @override
  State<Quizz> createState() => _QuizzState();
}

class _QuizzState extends State<Quizz> {
  Future<Quiz>? futureData;

  @override
  void initState() {
    futureData = fetchQuiz();
    // print(futureData.toString());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0XFFFFB84D),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: FutureBuilder<Quiz>(
            future: futureData,
            builder: (context, snapshot) {
              // if (snapshot.hasData) {
              //   // print(snapshot.data);
              //   return Text('erorrr');
              // }
              return Text((snapshot.data?.questions?[0].question ??
                  'something went wrong'));
              // return ListView.builder(
              //     // itemCount: snapshot.data?.length,
              //     itemBuilder: (context, index) {
              //   return Container(
              //     child: Text(snapshot.data.[index].toString()),
              //   );
              // });
            }));
  }
}
