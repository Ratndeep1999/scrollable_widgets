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
              // Horizontal List Items
              Expanded(
                child: ListView.builder(
                  itemCount: _colors.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 250,
                      width: 250,
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

              // Vertical List Items
            ],
          ),
        ),
      ),
    );
  }
}
