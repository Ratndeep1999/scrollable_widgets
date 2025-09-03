import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  // For Horizontal scroll ListView
  Widget _getContainerHori() {
    return Container(
      width: 180,
      margin: EdgeInsets.all(8.0),
      color: Colors.blue,
    );
  }

  // For Vertical scroll ListView
  Widget _getContainerVert() {
    return Container(
      height: 200,
      margin: EdgeInsets.all(8.0),
      color: Colors.red,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Widgets'),
        centerTitle: true,
        backgroundColor: Colors.orange[300],
        actions: [Icon(Icons.navigate_next, size: 40,)],
        actionsPadding: EdgeInsets.only(right: 10.0),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(16.0),
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2.0),
              ),
              child: ListView(
                padding: EdgeInsets.all(8.0),
                scrollDirection: Axis.horizontal,
                children: [
                  _getContainerHori(),
                ],
              ),
            ),

            Expanded(
              child: Container(
                margin: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2.0),
                ),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.all(8.0),
                  children: [
                    _getContainerVert()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
