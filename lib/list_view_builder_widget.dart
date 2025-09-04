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
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(16.0),
              itemCount: users.length,
              itemBuilder: (BuildContext context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    minVerticalPadding: 16.0,
                    tileColor: Colors.grey[300],
                    /// Picture
                    leading: CircleAvatar(
                      radius: 24.0,
                      backgroundImage: AssetImage(
                        'assets/images/${users[index].image}',
                      ),
                    ),
                    /// Name
                    title: Text(users[index].name),
                    titleTextStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    /// Profession
                    subtitle: Text(users[index].profession),
                    subtitleTextStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
