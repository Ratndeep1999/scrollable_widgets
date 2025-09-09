import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SingleChildScrollViewWidget extends StatelessWidget {
  const SingleChildScrollViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                  padding: EdgeInsets.all(16.0),
                  reverse: false,
                  primary: false,
                  dragStartBehavior: DragStartBehavior.start,
                  child: Row(
                    children: [
                      _getBoxHor(Colors.black),
                      SizedBox(width: 10,),
                      _getBoxHor(Colors.purple),
                      SizedBox(width: 10,),
                      _getBoxHor(Colors.blueGrey),
                      SizedBox(width: 10,),
                      _getBoxHor(Colors.yellow),
                      SizedBox(width: 10,),
                      _getBoxHor(Colors.pink),
                      SizedBox(width: 10,),
                      _getBoxHor(Colors.teal),
                      SizedBox(width: 10,),
                      _getBoxHor(Colors.grey),
                      SizedBox(width: 10,),
                      _getBoxHor(Colors.red),
                      SizedBox(width: 10,),
                      _getBoxHor(Colors.blue),
                      SizedBox(width: 10,),
                      _getBoxHor(Colors.orange),
                      SizedBox(width: 10,),
                    ],
                  ),
                ),

                // Vertical items
                _getBoxVer(Colors.black),
                SizedBox(height: 10),
                _getBoxVer(Colors.purple),
                SizedBox(height: 10),
                _getBoxVer(Colors.blueGrey),
                SizedBox(height: 10),
                _getBoxVer(Colors.yellow),
                SizedBox(height: 10),
                _getBoxVer(Colors.pink),
                SizedBox(height: 10),
                _getBoxVer(Colors.teal),
                SizedBox(height: 10),
                _getBoxVer(Colors.grey),
                SizedBox(height: 10),
                _getBoxVer(Colors.red),
                SizedBox(height: 10),
                _getBoxVer(Colors.blue),
                SizedBox(height: 10),
                _getBoxVer(Colors.orange),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // get horizontal box method
  Widget _getBoxHor(Color boxColor) {
    return SizedBox(
      height: 100.0,
      width: 100.0,
      child: DecoratedBox(decoration: BoxDecoration(color: boxColor)),
    );
  }

  // get vertical box method
  Widget _getBoxVer(Color boxColor) {
    return SizedBox(
      height: 100.0,
      width: 250.0,
      child: DecoratedBox(decoration: BoxDecoration(color: boxColor)),
    );
  }
}
