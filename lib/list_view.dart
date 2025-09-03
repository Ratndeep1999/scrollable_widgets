import 'package:flutter/material.dart';

class ListView extends StatelessWidget {
  const ListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Widgets'),
        centerTitle: true,
        backgroundColor: Colors.orange[300],
      ),
    );
  }
}
