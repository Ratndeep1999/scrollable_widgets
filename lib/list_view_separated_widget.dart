import 'package:flutter/material.dart';
import 'package:scrollablewidgets/user_model.dart';

class ListViewSeparatedWidget extends StatelessWidget {
  const ListViewSeparatedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView.separated Widgets'),
        centerTitle: true,
        backgroundColor: Colors.orange[300],
        actions: [Icon(Icons.navigate_next, size: 40)],
        actionsPadding: EdgeInsets.only(right: 10.0),
      ),
      body: SafeArea(
        child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          cacheExtent: 0.0,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/person39.jpg'),
                  radius: 30,
                ),
                title: Text('Title'),
                subtitle: Text('Description of Title'),
                trailing: Icon(Icons.circle, color: Colors.grey[500]),
                tileColor: Colors.yellow[100],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 4.0,
                  horizontal: 16.0,
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider();
          },
          itemCount: users.length,
        ),
      ),
    );
  }
}
