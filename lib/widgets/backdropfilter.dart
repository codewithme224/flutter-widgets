import 'package:flutter/material.dart';
import 'dart:ui';

//! Back drop Filter

class BackDropFilterWidget extends StatelessWidget {
  const BackDropFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back Drop Filter'),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          Text(
            '0' * 10000,
            style: const TextStyle(color: Colors.green),
          ),
          Center(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 4.0,
                  sigmaY: 4.0,
                ),
                child: Container(
                  alignment: Alignment.center,
                  width: 250,
                  height: 250,
                  child: const Text('Blur'),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
