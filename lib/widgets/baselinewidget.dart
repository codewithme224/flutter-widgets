import 'package:flutter/material.dart';

//! Baseline Widget

class BaselineWidget extends StatelessWidget {
  const BaselineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Baseline Widget'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.orange,
          child: const Baseline(
            baseline: 0,
            baselineType: TextBaseline.alphabetic,
            child: FlutterLogo(
              size: 50,
            ),
          ),
        ),
      ),
    );
  }
}
