import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    
    debugShowCheckedModeBanner: false,
    home: Home2(),
  ));
}

int ludo = 5;

/* class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffef476f),
      appBar: AppBar(
        title: Text('Ludo App'),
        centerTitle: true,
        backgroundColor: Color(0xffef476f),
        elevation: 10,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
                child: Padding(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: GestureDetector(
                onTap: () {},
                child: Image.asset(
                  'images/$ludo.png',
                ),
              ),
            )),
            Expanded(
                child: Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: InkWell(
                splashColor: Colors.white,
                onTap: () {
                  print('ludo four');
                },
                child: Image.asset(
                  'images/4.png',
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
} */

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  int ludo = 4;
  int ludo1 = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffef476f),
      appBar: AppBar(
        scrolledUnderElevation: 10,
        title: Text('Ludo App'),
        centerTitle: true,
        backgroundColor: Color(0xffef476f),
        elevation: 10,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                splashColor: Colors.white,
                onTap: () {
                  setState(() {
                    ludo = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset(
                  'images/$ludo.png',
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                splashColor: Colors.white,
                onTap: () {
                  setState(() {
                    ludo1 = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset(
                  'images/$ludo1.png',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
