import 'package:flutter/material.dart';
//! CheckBox ListTile

class CheckBoxListTile extends StatefulWidget {
  const CheckBoxListTile({super.key});

  @override
  State<CheckBoxListTile> createState() => _CheckBoxListTileState();
}

class _CheckBoxListTileState extends State<CheckBoxListTile> {
  bool? _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CheckBox ListTile'),
      ),
      body: Center(
        child: CheckboxListTile(
          title: const Text('CheckBox List Tile'),
          value: _isChecked,
          onChanged: (bool? newValue) {
            setState(() {
              _isChecked = newValue;
            });
          },
          
          activeColor: Colors.orangeAccent,
          checkColor: Colors.white,
          tileColor: Colors.black12,
          subtitle: const Text('This is a subtitle'),
          controlAffinity: ListTileControlAffinity.leading,
          tristate: true,
        ),
      ),
    );
  }
}
