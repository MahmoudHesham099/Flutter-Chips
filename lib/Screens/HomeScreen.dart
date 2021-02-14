import 'package:flutter/material.dart';
import 'package:flutterchips/Chips/ScrollableMultipleChip.dart';
import 'package:flutterchips/Chips/ScrollableSingleChip.dart';
import 'package:flutterchips/Chips/WrappedMultipleChip.dart';
import 'package:flutterchips/Chips/WrappedSingleChip.dart';
import 'package:flutterchips/Chips/WrappedSingleIconChip.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff00e676),
        title: Text('Flutter Chips'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: ListView(
          children: [
            SizedBox(height: 20),
            Text(
              'Scrollable List Single Choice',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            ScrollableSingleChip(),
            SizedBox(height: 10),
            Text(
              'Wrapped List Single Choice',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            WrappedSingleChip(),
            SizedBox(height: 10),
            Text(
              'Wrapped List Single Choice with Icon',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            WrappedSingleIconChip(),
            SizedBox(height: 10),
            Text(
              'Scrollable List Multiple Choice',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            ScrollableMultipleChip(),
            SizedBox(height: 10),
            Text(
              'Wrapped List Multiple Choice',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            WrappedMultipleChip(),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
