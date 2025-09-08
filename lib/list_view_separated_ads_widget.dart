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
  bool _isTileSelected = false;

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
                trailing: _isTileSelected
                    ? Icon(Icons.check_circle, size: 25.0)
                    : Icon(Icons.circle, size: 25.0),
                // Styling
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  side: BorderSide(color: Colors.black54, width: 1.5),
                ),
                titleAlignment: ListTileTitleAlignment.threeLine,
                titleTextStyle: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  letterSpacing: 1.0,
                ),
                subtitleTextStyle: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                ),
                // Styling for selected items
                onTap: () {
                  // Method for selected items
                  setState(() {
                    _isTileSelected = !_isTileSelected;
                  });
                },
                selected: _isTileSelected,
                selectedTileColor: Colors.black,
                selectedColor: Colors.white,
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider(color: Colors.black, thickness: 2.0,);
          },
          itemCount: users.length,
        ),
      ),
    );
  }
}
