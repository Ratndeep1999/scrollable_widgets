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
            _buildContainer(200, Color(0xFF0061ff)),
            _buildContainer(200, Color(0xFFeed991)),
            _buildContainer(200, Color(0xFFffc8c8)),
            _buildContainer(200, Color(0xFFf9c58d)),
            _buildContainer(200, Color(0xFFb5c6e0)),
            _buildContainer(200, Color(0xFFbc1b68)),
            _buildContainer(200, Color(0xFF0061ff)),
            _buildContainer(200, Color(0xFF5cb270)),
            _buildContainer(200, Color(0xFF34073d)),
            _buildContainer(200, Color(0xFFffed00)),

          ],
        ),
      ),
    );
  }

  // Refactor Container Method
  Widget _buildContainer(double height, Color colors){
    return Container(
      height: height,
      color: colors,
    );
  }
}
