import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';

class WrappedMultipleChip extends StatefulWidget {
  @override
  _WrappedMultipleChipState createState() => _WrappedMultipleChipState();
}

class _WrappedMultipleChipState extends State<WrappedMultipleChip> {
  List<String> tags = [];
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
    return ChipsChoice.multiple(
      value: tags,
      onChanged: (val) => setState(() => tags = val),
      choiceItems: C2Choice.listFrom<String, String>(
        source: options,
        value: (i, v) => v,
        label: (i, v) => v,
      ),
      wrapped: true,
      choiceStyle: C2ChoiceStyle(
        color: Colors.blueGrey,
        brightness: Brightness.dark,
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      choiceActiveStyle: C2ChoiceStyle(
        color: Colors.red,
      ),
    );
  }
}
