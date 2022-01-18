import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: double.infinity,
          color: Colors.red,
        ),
        Container(
          height: 100,
          width: double.infinity,
          color: Colors.blue,
        ),
      ],
    );
  }
}
