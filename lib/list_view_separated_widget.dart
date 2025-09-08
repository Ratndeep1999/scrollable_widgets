import 'package:flutter/material.dart';
import 'package:scrollablewidgets/user_model.dart';

class ListViewSeparatedWidget extends StatefulWidget {
  const ListViewSeparatedWidget({super.key});

  @override
  State<ListViewSeparatedWidget> createState() =>
      _ListViewSeparatedWidgetState();
}

class _ListViewSeparatedWidgetState extends State<ListViewSeparatedWidget> {
  final Set<int> _selectedItems = {};

  /// Method to check the index is
  void _toggleSelection(int index) {
    setState(() {
      _selectedItems.contains(index)
          ? _selectedItems.remove(index)
          : _selectedItems.add(index);
      debugPrint('Selected index : $_selectedItems');
    });
  }

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
            // Check tile index is added or not if add then tile true
            bool isTileSelected = _selectedItems.contains(index);
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),

              /// ListTile Widget
              child: ListTileWidget(
                selectedTile: isTileSelected,
                itemIndex: index,
                onTap: () => _toggleSelection(index)
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Divider(
                color: Colors.grey,
                thickness: 1,
                radius: BorderRadius.circular(50.0),
              ),
            );
          },
          itemCount: users.length,
        ),
      ),
    );
  }
}


/// Refactored Tile Widget
class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
    super.key,
    required bool selectedTile,
    required this.itemIndex,
    required VoidCallback onTap,
  }) : _isTileSelected = selectedTile,
       _onTap = onTap;

  final int itemIndex;
  final bool _isTileSelected;
  final VoidCallback _onTap;

  // For Content
  final String _name;
  final String _profession;
  final String _image;

  @override
  Widget build(BuildContext context) {
    debugPrint('Acquire memory for Item : ${itemIndex + 1}');
    return ListTile(
      // main content
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/images/person39.jpg'),
        radius: 30,
      ),
      title: Text('Title'),
      subtitle: Text('Description of Title'),
      trailing: _isTileSelected
          ? Icon(
              Icons.check_circle,
              color: Colors.black,
              weight: 50,
              size: 25.0,
            )
          : Icon(Icons.circle, color: Colors.grey[500], size: 25.0),
      // styling
      tileColor: Colors.yellow[200],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      contentPadding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
      textColor: Colors.grey,
      titleTextStyle: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w700,
        letterSpacing: 2.0,
      ),
      subtitleTextStyle: TextStyle(
        fontSize: 15.0,
        fontWeight: FontWeight.w400,
        wordSpacing: 1.5,
        height: 1.5,
      ),
      // after selected
      onTap: _onTap,
      selected: _isTileSelected,
      selectedTileColor: Colors.yellow,
      selectedColor: Colors.black,
    );
  }
}
