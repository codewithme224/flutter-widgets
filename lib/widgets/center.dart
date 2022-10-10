import 'package:flutter/material.dart';

//! Center Widget

class CenterWidget extends StatelessWidget {
  const CenterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Center Widget'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.orangeAccent,
              child: const Center(
                heightFactor: 5,
                child: Text('Flutter Map'),
              ),
            )
          ],
        ));
  }
}
