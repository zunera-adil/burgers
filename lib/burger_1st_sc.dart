import 'package:burger_lab/quiz_detail_sc.dart';
import 'package:flutter/material.dart';
import 'package:show_up_animation/show_up_animation.dart';

class Burgers extends StatelessWidget {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color(0XFFFFB84D)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height / 20,
            ),
            const Text(
              'BEST BURGER IN TOWN',
              style: TextStyle(
                color: Color(0XFFD40000),
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                const Positioned(
                  child: Image(
                    image: AssetImage('images/2.png'),
                    fit: BoxFit.cover,
                  ),
                ), // Back image
                Positioned(
                  child: Image(
                    image: const AssetImage(
                      'images/1.png',
                    ),
                    width: width / 1.5,
                  ),
                ),
                Positioned(
                  top: 50,
                  right: 50,
                  bottom: 150,
                  child: ShowUpAnimation(
                    delayStart: const Duration(seconds: 1),
                    animationDuration: const Duration(seconds: 2),
                    curve: Curves.bounceIn,
                    direction: Direction.vertical,
                    offset: 0.5,
                    child: const Image(
                      image: AssetImage('images/3.png'),
                      // height: height / 4,
                      // width: width / 4,
                    ),
                  ),
                ),
              ],
            ),
            const Text(
              'ZINGER BURGER',
              style: TextStyle(
                color: Color(0XFFD40000),
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Container(
                alignment: Alignment.center,
                height: height / 30,
                width: width / 2.5,
                decoration: const BoxDecoration(
                    color: Color(0XFFFFB84D),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10))),
                child: const Text(
                  'only available in KFC',
                ),
              ),
            ),
            SizedBox(
              height: height / 15,
            ),
            Container(
              alignment: Alignment.center,
              height: height / 20,
              width: width / 3,
              decoration: const BoxDecoration(
                  color: Color(0XFFFFB84D),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LevelNo()));
                },
                child: const Text(
                  'LETS EAT',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
