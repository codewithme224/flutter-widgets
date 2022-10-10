import 'package:flutter/material.dart';


//! ALIGN WIDGET

class AlignmentWidget extends StatelessWidget {
  const AlignmentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 120,
        width: double.infinity,
        color: Colors.blueGrey,
        child: const Align(
          alignment: Alignment.centerLeft,
          child: FlutterLogo(
            size: 60,
          ),
        ),
      ),
    );
  }
}
