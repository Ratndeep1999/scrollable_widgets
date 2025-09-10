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
          children: [
            Container(height: 200, width: 200, color: Color(0xFF5cb270)),
          ],
        ),
      ),
    );
  }
}
