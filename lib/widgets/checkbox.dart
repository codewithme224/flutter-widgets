import 'package:flutter/material.dart';

//! CheckBox Widget

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({super.key});

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CheckBox Widget'),
      ),
      body: Center(
        child: Checkbox(
          value: isChecked,
          activeColor: Colors.orangeAccent,
          tristate: true,
          onChanged: (newBool) {
            setState(() {
              isChecked = newBool;
            });
          },
        ),
      ),
    );
  }
}
