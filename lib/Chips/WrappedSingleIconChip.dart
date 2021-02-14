import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';

class WrappedSingleIconChip extends StatefulWidget {
  @override
  _WrappedSingleIconChipState createState() => _WrappedSingleIconChipState();
}

class _WrappedSingleIconChipState extends State<WrappedSingleIconChip> {
  int tag = 1;
  List<String> options = [
    'News',
    'Sports',
    'Travel',
    'Tech',
    'Science',
  ];
  List myIcons = [
    Icons.fiber_new,
    Icons.directions_run,
    Icons.airplanemode_active,
    Icons.mobile_friendly,
    Icons.science,
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
      wrapped: true,
      choiceStyle: C2ChoiceStyle(
        color: Colors.blueGrey,
        brightness: Brightness.dark,
        showCheckmark: false,
      ),
      choiceActiveStyle: C2ChoiceStyle(
        color: Colors.blue,
      ),
      choiceAvatarBuilder: (data) {
        return Icon(
          myIcons[data.value],
          color: Colors.white,
        );
      },
    );
  }
}
