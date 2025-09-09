import 'package:flutter/material.dart';

class ScrollControllerWidget extends StatelessWidget {
  ScrollControllerWidget({super.key});

  final List<Color> _colors = <Color>[
    Color(0xFF0061ff),
    Color(0xFFa9ff68),
    Color(0xFFffc8c8),
    Color(0xFFf9c58d),
    Color(0xFFb5c6e0),
    Color(0xFFaefb2a),
    Color(0xFF5cb270),
    Color(0xFF34073d),
    Color(0xFFffed00),
    Color(0xFFeed991),
  ];

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
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// Horizontal List Items
              SizedBox(
                height: 150,
                child: ListView.builder(
                  padding: EdgeInsets.all(16.0),
                  scrollDirection: Axis.horizontal,
                  itemCount: _colors.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 8.0,
                      ),
                      width: 100,
                      decoration: BoxDecoration(color: _colors[index]),
                    );
                  },
                ),
              ),

              /// Vertical List Items
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(
                    vertical: 16.0,
                    horizontal: 70.0,
                  ),
                  itemCount: _colors.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 32.0),
                      height: 250,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: _colors[index],
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            spreadRadius: 15.0,
                            blurRadius: 20.0,
                            offset: Offset(30.0, 30.0),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
