import 'package:flutter/material.dart';

class AbsurdPointer extends StatelessWidget {
  const AbsurdPointer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          SizedBox(
            width: 200.0,
            height: 100.0,
            child: ElevatedButton(
              onPressed: () {},
              child: null,
            ),
          ),
          SizedBox(
            width: 100.0,
            height: 200.0,
            child: AbsorbPointer(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blue.shade200),
                onPressed: () {},
                child: null,
              ),
            ),
          )
        ],
      ),
    );
  }
}
