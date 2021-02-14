import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';

class ScrollableSingleChip extends StatefulWidget {
  @override
  _ScrollableSingleChipState createState() => _ScrollableSingleChipState();
}

class _ScrollableSingleChipState extends State<ScrollableSingleChip> {
  int tag = 1;
  List<String> options = [
    'News',
    'Entertainment',
    'Politics',
    'Automotive',
    'Sports',
    'Education',
    'Fashion',
    'Travel',
    'Food',
    'Tech',
    'Science',
  ];

  @override
  Widget build(BuildContext context) {
    return ChipsChoice.single(
      value: tag,
      onChanged: (val) => setState(() => tag = val),
      choiceItems: C2Choice.listFrom(
        source: options,
        value: (i, v) => i,
        label: (i, v) => v,
      ),
      choiceStyle: C2ChoiceStyle(
        color: Colors.blueGrey,
        brightness: Brightness.dark,
      ),
      choiceActiveStyle: C2ChoiceStyle(
        color: Colors.blue,
      ),
    );
  }
}
