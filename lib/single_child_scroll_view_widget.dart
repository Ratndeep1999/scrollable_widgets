import 'package:flutter/material.dart';

class SingleChildScrollViewWidget extends StatelessWidget {
  const SingleChildScrollViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            _getBoxHor(Colors.black),
            _getBoxHor(Colors.purple),
            _getBoxHor(Colors.blueGrey),
            _getBoxHor(Colors.yellow),
            _getBoxHor(Colors.pink),
            _getBoxHor(Colors.teal),
            _getBoxHor(Colors.grey),
            _getBoxHor(Colors.red),
            _getBoxHor(Colors.blue),
            _getBoxHor(Colors.orange),
          ],
        ),
      ),
    );
  }

  // get horizontal box method
  Widget _getBoxHor(Color boxColor) {
    return SizedBox(
      height: 100.0,
      width: 100.0,
      child: DecoratedBox(decoration: BoxDecoration(color: boxColor)),
    );
  }
}
