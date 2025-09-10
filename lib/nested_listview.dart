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
          itemExtent: 200,
          padding: EdgeInsets.all(16.0),
          children: [
            _buildContainer(SizedBox(), 200, Color(0xFF0061ff)),
            _buildContainer(SizedBox(), 100, Color(0xFFeed991)),
            _buildContainer(SizedBox(), 200, Color(0xFFffc8c8)),
            _buildContainer(SizedBox(), 300, Color(0xFFf9c58d)),
            _buildContainer(SizedBox(), 350, Color(0xFFb5c6e0)),
            _buildContainer(SizedBox(), 280, Color(0xFFbc1b68)),
            _buildContainer(SizedBox(), 150, Color(0xFF0061ff)),
            _buildContainer(SizedBox(), 200, Color(0xFF5cb270)),
            _buildContainer(SizedBox(), 250, Color(0xFF34073d)),
            _buildContainer(SizedBox(), 300, Color(0xFFffed00)),
            _buildVerticalListView()
          ],
        ),
      ),
    );
  }

  // Refactor Container Method
  Widget _buildContainer(Widget child, double height, Color colors){
    return Container(
      height: height,
      color: colors,
      child: child,
    );
  }

  // Vertical ListView
  Widget _buildVerticalListView(){
    return ListView(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 64.0),
      prototypeItem: SizedBox(height: 100, width: 100),
      children: [
        _buildContainer(SizedBox(), 200, Color(0xFF0061ff)),
        _buildContainer(SizedBox(), 100, Color(0xFFeed991)),
        _buildContainer(SizedBox(), 200, Color(0xFFffc8c8)),
        _buildContainer(SizedBox(), 300, Color(0xFFf9c58d)),
        _buildContainer(SizedBox(), 350, Color(0xFFb5c6e0)),
        _buildContainer(SizedBox(), 280, Color(0xFFbc1b68)),
        _buildContainer(SizedBox(), 150, Color(0xFF0061ff)),
        _buildContainer(SizedBox(), 200, Color(0xFF5cb270)),
        _buildContainer(SizedBox(), 250, Color(0xFF34073d)),
        _buildContainer(SizedBox(), 300, Color(0xFFffed00)),
      ],
    );
  }

  // Horizontal ListView
  Widget _buildHorizontalListView(){
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        _buildContainer(SizedBox(), 200, Color(0xFF0061ff)),
        _buildContainer(SizedBox(), 100, Color(0xFFeed991)),
        _buildContainer(SizedBox(), 200, Color(0xFFffc8c8)),
        _buildContainer(SizedBox(), 300, Color(0xFFf9c58d)),
        _buildContainer(SizedBox(), 350, Color(0xFFb5c6e0)),
        _buildContainer(SizedBox(), 280, Color(0xFFbc1b68)),
        _buildContainer(SizedBox(), 150, Color(0xFF0061ff)),
        _buildContainer(SizedBox(), 200, Color(0xFF5cb270)),
        _buildContainer(SizedBox(), 250, Color(0xFF34073d)),
        _buildContainer(SizedBox(), 300, Color(0xFFffed00)),
      ],
    );
  }



}

