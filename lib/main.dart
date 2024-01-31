import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Hello to my second app'),
        backgroundColor: Colors.yellow,
        leading: Icon(
          Icons.library_add,
          color: Colors.black,
        ),
      ),
      body: SecApp(),
    ),
  ));
}

class SecApp extends StatefulWidget {
  const SecApp({super.key});

  @override
  State<SecApp> createState() => _SecAppState();
}

class _SecAppState extends State<SecApp> {
  int rightImageNumber = 5;
  int leftImageNumber = 2;
  void lol() {
    leftImageNumber = Random().nextInt(8) + 1;
    rightImageNumber = Random().nextInt(8) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          leftImageNumber == rightImageNumber ? 'NICE GOOD JOB ' : ' Nice try',
          style: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.normal,
            //fontFamily:
            fontSize: 42.0,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      lol();
                    });
                  },
                  child: Image(
                    image: AssetImage('images/image-$leftImageNumber.jpg'),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      lol();
                    });
                  },
                  child: Image(
                    image: AssetImage('images/image-$rightImageNumber.jpg'),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
