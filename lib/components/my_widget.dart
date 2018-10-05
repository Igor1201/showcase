import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  final bool anotherBuild;
  final double sliderValue;

  MyWidget({
    this.anotherBuild = false,
    this.sliderValue = 2.0,
  });

  @override
  Widget build(BuildContext context) {
    if (anotherBuild) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(color: Colors.red, width: 40.0, height: 40.0),
          Container(color: Colors.green, width: 40.0, height: 40.0),
          Container(color: Colors.blue, width: 40.0, height: 40.0),
        ],
      );
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('This is my text'),
        Text('This is another text'),
        RaisedButton(
          onPressed: () {},
          child: Text('This should be a button'),
          color: Colors.amber,
        ),
        Switch(
          onChanged: (_) {},
          value: true,
        ),
        Slider(
          value: sliderValue,
          max: 7.0,
          onChanged: (_) {},
        ),
      ],
    );
  }
}
