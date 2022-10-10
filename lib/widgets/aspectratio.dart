import 'package:flutter/material.dart';

//! Aspect Ratio Widget

class AspectRatioWidget extends StatefulWidget {
  const AspectRatioWidget({super.key});

  @override
  State<AspectRatioWidget> createState() => _AspectRatioWidgetState();
}

class _AspectRatioWidgetState extends State<AspectRatioWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Aspect Ratio'),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.orangeAccent,
          alignment: Alignment.center,
          width: double.infinity,
          height: 300.0,
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              color: Colors.blueGrey,
            ),
          ),
        ),
      ),
    );
  }
}
