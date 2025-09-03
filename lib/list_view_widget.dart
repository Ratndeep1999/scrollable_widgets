import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Widgets'),
        centerTitle: true,
        backgroundColor: Colors.orange[300],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Expanded(
            child: ListView(
              children: [
                Container(
                  height: 200,
                  width: 400,
                  color: Colors.red,
                )
              ],
            )
          ),
        ),
      ),
    );
  }
}
