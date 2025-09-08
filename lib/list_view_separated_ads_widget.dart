import 'package:flutter/material.dart';
import 'package:scrollablewidgets/user_model.dart';

class ListViewSeparatedAdsWidget extends StatefulWidget {
  const ListViewSeparatedAdsWidget({super.key});

  @override
  State<ListViewSeparatedAdsWidget> createState() =>
      _ListViewSeparatedAdsWidgetState();
}

class _ListViewSeparatedAdsWidgetState
    extends State<ListViewSeparatedAdsWidget> {
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
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          physics: BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                // Main content
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/person20.jpg'),
                  radius: 25.0,
                ),
                title: Text('User Name'),
                subtitle: Text('User Profession'),
                trailing: Icon(Icons.circle),
                // Styling
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  side: BorderSide(color: Colors.black54,width: 1.5)
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
