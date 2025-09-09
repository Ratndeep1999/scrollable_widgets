import 'package:flutter/material.dart';

class ScrollControllerWidget extends StatelessWidget {
  const ScrollControllerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scroll Controller'),
        centerTitle: true,
        backgroundColor: Colors.orange[300],
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.navigate_next, size: 40),
          ),
        ],
        actionsPadding: EdgeInsets.only(right: 10.0),
      ),
      body: SafeArea(child: Column(children: [
        SizedBox(
          child: DecoratedBox(decoration: BoxDecoration()),
        )
      ],)),
    );
  }
}
