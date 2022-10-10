import 'package:flutter/material.dart';

//! Animated TextStyle Widget

class AnimatedTextStyleWidget extends StatefulWidget {
  const AnimatedTextStyleWidget({super.key});

  @override
  State<AnimatedTextStyleWidget> createState() =>
      _AnimatedTextStyleWidgetState();
}

class _AnimatedTextStyleWidgetState extends State<AnimatedTextStyleWidget> {
  bool _first = true;
  double _fontSize = 60;
  Color _color = Colors.blue;
  FontWeight _fontWeight = FontWeight.bold;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            height: 120,
            child: AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 300),
              style: TextStyle(
                  fontSize: _fontSize, color: _color, fontWeight: _fontWeight),
              child: const Text('Flutter'),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _fontSize = _first ? 90 : 60;
                _color = _first ? Colors.blue : Colors.red;
                _first = !_first;
              });
            },
            child: const Text('Switch'),
          )
        ],
      ),
    );
  }
}
