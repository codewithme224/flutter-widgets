import 'package:flutter/material.dart';

//! Animated Position Widget

class AnimatedPositionWidget extends StatefulWidget {
  const AnimatedPositionWidget({super.key});

  @override
  State<AnimatedPositionWidget> createState() => _AnimatedPositionWidgetState();
}

class _AnimatedPositionWidgetState extends State<AnimatedPositionWidget> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Animated Position'),
          centerTitle: true,
        ),
        body: SizedBox(
          width: 200,
          height: 350,
          child: Stack(
            children: <Widget>[
              AnimatedPositioned(
                width: selected ? 200.0 : 50.0,
                height: selected ? 50.0 : 200.0,
                top: selected ? 50.0 : 150.0,
                duration: const Duration(seconds: 2),
                curve: Curves.fastOutSlowIn,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selected = !selected;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.circular(25)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
