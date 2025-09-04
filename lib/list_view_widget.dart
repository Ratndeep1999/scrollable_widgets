import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  // For Horizontal scroll ListView
  Widget _getContainerHori(int index) {
    debugPrint('Called $index Index for Horizontal ListView');
    return Container(
      alignment: Alignment.center,
      width: 180,
      margin: EdgeInsets.all(8.0),
      color: Colors.blue[200],
      child: Text(index.toString(), style: TextStyle(fontSize: 40),),
    );
  }

  // For Vertical scroll ListView
  Widget _getContainerVert(int index) {
    debugPrint('Called $index Index for Vertical ListView');
    return Container(
      alignment: Alignment.center,
      height: 200,
      margin: EdgeInsets.all(8.0),
      color: Colors.red[200],
      child: Text(index.toString(), style: TextStyle(fontSize: 40),),
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

              /// Horizontal ListView
              child: ListView(
                padding: EdgeInsets.all(8.0),
                scrollDirection: Axis.horizontal,
                reverse: true,  // item starts from reverse
                shrinkWrap: false,  // adjust space using items
                physics: BouncingScrollPhysics(), //
                children: [
                  _getContainerHori(0),
                  _getContainerHori(1),
                  _getContainerHori(2),
                  _getContainerHori(3),
                  _getContainerHori(4),
                  _getContainerHori(5),
                  _getContainerHori(6),
                  _getContainerHori(7),
                  _getContainerHori(8),
                  _getContainerHori(9),
                  _getContainerHori(10),
                  _getContainerHori(11),
                ],
              ),
            ),

            Expanded(
              child: Container(
                margin: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2.0),
                ),

                /// Vertical ListView
                child: ListView(
                  padding: EdgeInsets.all(8.0),
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                  primary: true,
                  dragStartBehavior: DragStartBehavior.down,
                  prototypeItem: SizedBox(height: 200, width: 200,), // give exact height and width for each item
                  children: [
                    _getContainerVert(0),
                    _getContainerVert(1),
                    _getContainerVert(2),
                    _getContainerVert(3),
                    _getContainerVert(4),
                    _getContainerVert(5),
                    _getContainerVert(6),
                    _getContainerVert(7),
                    _getContainerVert(8),
                    _getContainerVert(9),
                    _getContainerVert(10),
                    _getContainerVert(11),
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
