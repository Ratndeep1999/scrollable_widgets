import 'package:flutter/material.dart';
import 'package:scrollablewidgets/list_view_builder_widget.dart';
import 'package:scrollablewidgets/list_view_widget.dart';

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
                Navigator.of(context).push(
                  // Fade Transition
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        ListViewWidget(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                          return FadeTransition(
                            opacity: animation,
                            child: child,
                          );
                        },
                  ),
                );
              },
            ),

            /// ListView.builder()
            buildItem(
              context,
              title: 'ListView.builder()',
              onTap: () {
                Navigator.of(context).push(
                  // Scale (Zoom-in) Transition
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        ListViewBuilderWidget(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                          return ScaleTransition(
                            scale: animation,
                            child: child,
                          );
                        },
                  ),
                );
              },
            ),

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
