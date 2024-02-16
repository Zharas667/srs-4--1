import 'package:flutter/material.dart';

class ChooseColor extends StatelessWidget {
  final Color choosenColor;

  ChooseColor({required this.choosenColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: choosenColor,
      body: Center(
        child: Text(
          'Color is: ${choosenColor.toString()}',
          style: TextStyle(color: Colors.black, fontSize: 34),
        ),
      ),
    );
  }
}
