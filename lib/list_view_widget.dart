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
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: ListView(
                padding: EdgeInsets.all(16.0),
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 180,
                    margin: EdgeInsets.all(8.0),
                    color: Colors.blue,
                  ),
                  Container(
                    width: 180,
                    margin: EdgeInsets.all(8.0),
                    color: Colors.blue,
                  ),
                  Container(
                    width: 180,
                    margin: EdgeInsets.all(8.0),
                    color: Colors.blue,
                  ),
                  Container(
                    width: 180,
                    margin: EdgeInsets.all(8.0),
                    color: Colors.blue,
                  ),
                  Container(
                    width: 180,
                    margin: EdgeInsets.all(8.0),
                    color: Colors.blue,
                  ),
                  Container(
                    width: 180,
                    margin: EdgeInsets.all(8.0),
                    color: Colors.blue,
                  ),
                  Container(
                    width: 180,
                    margin: EdgeInsets.all(8.0),
                    color: Colors.blue,
                  ),
                  Container(
                    width: 180,
                    margin: EdgeInsets.all(8.0),
                    color: Colors.blue,
                  ),
                  Container(
                    width: 180,
                    margin: EdgeInsets.all(8.0),
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.all(16.0),
                  children: [
                    Container(
                      height: 200,
                      color: Colors.red,
                    ),
                    Container(
                      height: 200,
                      color: Colors.red,
                    ),
                    Container(
                      height: 200,
                      color: Colors.red,
                    ),
                    Container(
                      height: 200,
                      color: Colors.red,
                    ),
                    Container(
                      height: 200,
                      color: Colors.red,
                    ),
                    Container(
                      height: 200,
                      color: Colors.red,
                    ),
                    Container(
                      height: 200,
                      color: Colors.red,
                    ),
                    Container(
                      height: 200,
                      color: Colors.red,
                    ),
                    Container(
                      height: 200,
                      color: Colors.red,
                    ),
                    Container(
                      height: 200,
                      color: Colors.red,
                    ),
                  ],
                )
            ),
          ],
        )
      ),
    );
  }
}
