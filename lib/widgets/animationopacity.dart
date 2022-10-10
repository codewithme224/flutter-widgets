import 'package:flutter/material.dart';

//! Animation Opacity

class AnimationOpacityWidget extends StatefulWidget {
  const AnimationOpacityWidget({super.key});

  @override
  State<AnimationOpacityWidget> createState() => _AnimationOpacityWidgetState();
}

class _AnimationOpacityWidgetState extends State<AnimationOpacityWidget> {
  double opacityLevel = 1.0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Animation Opacity'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              AnimatedOpacity(
                opacity: opacityLevel,
                duration: const Duration(seconds: 2),
                child: const FlutterLogo(
                  size: 50,
                ),
              ),
              ElevatedButton(
                child: const Text('Fade Logo'),
                onPressed: () {
                  setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
