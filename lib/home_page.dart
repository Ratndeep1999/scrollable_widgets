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
            buildItem(
              context,
              title: 'ListView()',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ListView();
                    },
                  ),
                );
              },
            ),

            /// ListView.builder()
            buildItem(context, title: 'ListView.builder()', onTap: () {}),

            /// ListView.separated()
            buildItem(context, title: 'ListView.separated()', onTap: () {}),

            /// ListView.custom()
            buildItem(context, title: 'ListView.custom()', onTap: () {}),
          ],
        ),
      ),
    );
  }

  // build item method
  Padding buildItem(
    BuildContext context, {
    required String title,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.07,
        width: double.infinity,
        // onTap
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(30.0),
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.grey[300],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Text
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.orange,
                  ),
                ),
                // Icon
                Icon(Icons.navigate_next, size: 50, color: Colors.orange),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
