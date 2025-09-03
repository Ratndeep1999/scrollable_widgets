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
      body: SafeArea(
        child: Column(
          children: [

            /// ListView()
            InkWell(
              onTap: (){},
              child: buildItem(context),
            ),

          ],
        ),
      ),
    );
  }

  // build item method
  Padding buildItem(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
              width: double.infinity,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.grey[300]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'ListView()',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.orange,
                      ),
                    ),
                    Icon(
                      Icons.navigate_next,
                      size: 50,
                      color: Colors.orange,
                    )
                  ],
                ),
              ),
            ),
          );
  }
}
