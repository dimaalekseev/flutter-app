import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(SimpleWidget());

class SimpleWidget extends StatefulWidget {
  @override
  _SimpleWidgetState createState() => _SimpleWidgetState();
}

class _SimpleWidgetState extends State<SimpleWidget> {
  //private variable for generating random color
  Color _color;

  //variable for calculating how many times user tapped the screen
  int counter = 0;

  //method for generating our random color using state
  void randomColor() {
    setState(() {
      _color = Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
          .withOpacity(1.0);
    });
  }

  @override
  void initState() {
    randomColor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {randomColor(), ++counter},
      child: Container(
        alignment: Alignment.center,
        color: _color,
        child: Text(
          "Hey there $counter times!",
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 30, color: Colors.purple),
        ),
      ),
    );
  }
}
