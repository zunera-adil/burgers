import 'package:burger_lab/api.dart';
import 'package:burger_lab/quiz.dart';
import 'package:flutter/material.dart';

class LevelNo extends StatefulWidget {
  const LevelNo({Key? key}) : super(key: key);

  @override
  State<LevelNo> createState() => _LevelNoState();
}

class _LevelNoState extends State<LevelNo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFFB84D),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'QUIZ',
          style:
              TextStyle(color: Color(0XFF542F23), fontWeight: FontWeight.w900),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Container(
              height: 100,
              width: 350,
              decoration: BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage("images/quiz_item_bg.png"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Level 01',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Quizz()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 35,
                      width: 40,
                      child: Text(
                        'Go',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.lightBlueAccent),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Image.asset('images/giphy.gif'),
          )
        ],
      ),
    );
  }
}
