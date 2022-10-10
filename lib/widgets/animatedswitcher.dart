import 'package:flutter/material.dart';

//! Animated Switcher

class AnimatedSwitcherWidget extends StatefulWidget {
  const AnimatedSwitcherWidget({super.key});

  @override
  State<AnimatedSwitcherWidget> createState() => _AnimatedSwitcherWidgetState();
}

class _AnimatedSwitcherWidgetState extends State<AnimatedSwitcherWidget> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: const Color.fromARGB(255, 8, 29, 49),
      appBar: AppBar(
        title: const Text('Animated Switcher Widget'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: Text(
                '$_count',
                style: const TextStyle(fontSize: 40, color: Colors.white),
                key: ValueKey(_count),
              ),
              // transitionBuilder: (Widget child, Animation<double> animation) {
              //   return ScaleTransition(scale: animation, child: child);
              // },
            ),
            ElevatedButton(
              child: const Text('Add'),
              onPressed: () {
                setState(() {
                  _count++;
                });
              },
            ),
            ElevatedButton(
              child: const Text('Subtract'),
              onPressed: () {
                setState(() {
                  _count--;
                });
              },
            )
          ],
        ),
      ),
    ));
  }
}
