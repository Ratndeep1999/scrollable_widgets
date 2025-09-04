import 'package:flutter/material.dart';
import 'package:scrollablewidgets/user_model.dart';

class ListViewBuilderWidget extends StatelessWidget {
  const ListViewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView.builder Widgets'),
        centerTitle: true,
        backgroundColor: Colors.orange[300],
        actions: [Icon(Icons.navigate_next, size: 40)],
        actionsPadding: EdgeInsets.only(right: 10.0),
      ),
      body: Column(
        children: [
          Image.asset(users[0].image, width: 200, height: 200),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(16.0),
              itemCount: users.length,
              itemBuilder: (BuildContext context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    //backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage(
                      users[index].image, // this fetch the image
                    ),
                  ),
                  title: Text(users[index].name),
                  subtitle: Text(users[index].profession),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
