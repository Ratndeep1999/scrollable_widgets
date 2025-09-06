import 'package:flutter/material.dart';
import 'package:scrollablewidgets/user_model.dart';

class ListViewBuilderWidget extends StatefulWidget {
  const ListViewBuilderWidget({super.key});

  @override
  State<ListViewBuilderWidget> createState() => _ListViewBuilderWidgetState();
}

class _ListViewBuilderWidgetState extends State<ListViewBuilderWidget> {
  Set<int?> selectedIndex = {}; // store indexes of selected tile

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

      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: users.length,
        itemBuilder: (BuildContext context, index) {
          // tile is selected if it's index matches
          bool isSelected = selectedIndex.contains(index) ? true : false;
          //selectedIndex == index; For single tile selection
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),

            /// ListView method
            child: buildListTile(index, isSelected),
          );
        },
      ),
    );
  }

  // ListTile method
  ListTile buildListTile(int index, bool isSelected) {
    return ListTile(
      onTap: () {
        debugPrint('On Clicked $index');
        setState(() {
          // indexes store to selectedIndex
          selectedIndex.add(index);
          // selectedIndex = index; For store single index
        });
      },
      onFocusChange: (hasFocus) {
        debugPrint('Tile $index focused');
      },
      selected: isSelected,
      trailing: isSelected ? Icon(Icons.circle) : Icon(Icons.circle_outlined),
      // text and icon color when selected
      selectedColor: Colors.white,
      selectedTileColor: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      tileColor: Colors.grey[300],
      minVerticalPadding: 16.0,
      titleAlignment: ListTileTitleAlignment.center,

      /// Picture
      leading: CircleAvatar(
        radius: 26.0,
        backgroundImage: AssetImage('assets/images/${users[index].image}'),
      ),

      /// Name
      title: Text(users[index].name),
      titleTextStyle: TextStyle(
        fontSize: 18.0,
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
      horizontalTitleGap: 16.0,
      // icon and text in between space
      minLeadingWidth: 16.0,
      // minTileHeight: 16.0,

      // for web/desktop
      enableFeedback: true,
      hoverColor: Colors.grey[500],
      focusColor: Colors.orange,
      focusNode: FocusNode(),
    );
  }
}
