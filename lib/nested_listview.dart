import 'package:flutter/material.dart';

class NestedListview extends StatelessWidget {
  NestedListview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nested ListView'),
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
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            Container(height: 200, width: 200, color: Color(0xFF0061ff)),
            Container(height: 200, width: 200, color: Color(0xFFa9ff68)),
            Container(height: 200, width: 200, color: Color(0xFFffc8c8)),
            Container(height: 200, width: 200, color: Color(0xFFf9c58d)),
            Container(height: 200, width: 200, color: Color(0xFFb5c6e0)),
            Container(height: 200, width: 200, color: Color(0xFFbc1b68)),
            Container(height: 200, width: 200, color: Color(0xFF5cb270)),
            Container(height: 200, width: 200, color: Color(0xFF34073d)),
            Container(height: 200, width: 200, color: Color(0xFFffed00)),
            Container(height: 200, width: 200, color: Color(0xFFeed991)),

          ],
        ),
      ),
    );
  }
}
