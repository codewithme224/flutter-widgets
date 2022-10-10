import 'package:flutter/material.dart';

//! Card Widget

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: Center(
        child: Card(
          elevation: 20,
          color: Colors.orangeAccent,
          child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(height: 8),
              const Text('This is a flutter card'),
              TextButton(
                child: const Text('Press'),
                onPressed: () {},
              )
            ],
          ),
        ),
      )
      ),
    );
  }
}