import 'package:flutter/material.dart';

//! Builder Widget

class BuilderWidget extends StatelessWidget {
  const BuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Builder Widget'),
        centerTitle: true,
      ),
      body: myWidget(),
    );
  }
}

myWidget() => Builder(builder: (context) {
      return Text(
        'Text with Theme',
        style: Theme.of(context).textTheme.displayLarge,
      );
    });
