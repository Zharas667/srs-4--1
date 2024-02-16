import 'package:flutter/material.dart';
import 'ChooseColor.dart';

void main() {
  runApp(MaterialApp(
    home: RedYellowBlue(),
  ));
}

class RedYellowBlue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose button'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ColorButton(color: Colors.red, text: 'Red'),
            ColorButton(color: Colors.yellow, text: 'Yellow'),
            ColorButton(color: Colors.blue, text: 'Blue'),
          ],
        ),
      ),
    );
  }
}

class ColorButton extends StatelessWidget {
  final Color color;
  final String text;

  ColorButton({required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChooseColor(choosenColor: color),
          ),
        );
      },
      style: ElevatedButton.styleFrom(backgroundColor: color),
      child: Text(text),
    );
  }
}
