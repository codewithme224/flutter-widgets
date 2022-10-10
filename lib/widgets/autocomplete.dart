import 'package:flutter/material.dart';

//! Auto Complete

class AutoCompleteWidget extends StatelessWidget {
  const AutoCompleteWidget({super.key});

  static const List<String> listItems = <String>['apple', 'banana', 'melon'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Auto Complete'),
          centerTitle: true,
        ),
        body: Autocomplete<String>(
          optionsBuilder: (TextEditingValue textEditingValue) {
            if (textEditingValue.text == '') {
              return const Iterable<String>.empty();
            }
            return listItems.where((String item) {
              return item.contains(textEditingValue.text.toLowerCase());
            });
          },
          onSelected: (String item) {
            print('The $item was selected');
          },
        ),
      ),
    );
  }
}
