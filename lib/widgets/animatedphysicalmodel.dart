import 'package:flutter/material.dart';

//! Animated physical model

class AnimatedPhysical extends StatefulWidget {
  const AnimatedPhysical({super.key});

  @override
  State<AnimatedPhysical> createState() => _AnimatedPhysicalState();
}

class _AnimatedPhysicalState extends State<AnimatedPhysical> {
  bool _isFlat = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Animated Physical Model'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              AnimatedPhysicalModel(
                duration: const Duration(milliseconds: 500),
                curve: Curves.fastOutSlowIn,
                elevation: _isFlat ? 0.0 : 6.0,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
                shadowColor: Colors.black,
                color: Colors.white,
                child: const SizedBox(
                  height: 150.0,
                  width: 150.0,
                  child: Icon(
                    Icons.android_outlined,
                    color: Colors.green,
                    size: 70.0,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                child: const Text('Click'),
                onPressed: () {
                  setState(() {
                    _isFlat = !_isFlat;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
