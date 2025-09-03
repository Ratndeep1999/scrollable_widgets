import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scrollable Widgets'),
        centerTitle: true,
        backgroundColor: Colors.orange[300],
      ),
      body: SafeArea(child: Column()),
    );
  }
}
