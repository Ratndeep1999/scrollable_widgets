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
  final Set<int> _selectedItems = {};

  // Method to check is Item selected or not
  _toggleItemSelection(int index) {
    if (_selectedItems.contains(index)) {
      _selectedItems.remove(index);
    } else {
      _selectedItems.add(index);
    }
    setState(() {});
    debugPrint('Selected Index : $_selectedItems');
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
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          physics: BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            // Check is _selected item contains index or not
            bool isTileSelected = _selectedItems.contains(index);
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0),

              /// ListTile Widget
              child: ListTileWidget(
                isTileSelected: isTileSelected,

                /// Method for items select or de-select
                onTap: () => _toggleItemSelection(index),
                name: users[index].name,
                profession: users[index].profession,
                image: 'assets/images/${users[index].image}',
              ),
            );
          },

          /// Advertisement Section
          separatorBuilder: (BuildContext context, int index) {
            // If index is fully divisible by 4 the add show otherwise empty size box
            return (index % 4 == 0)
                ?
                  /// Refactored Advertisement Method
                  buildAdsListTile()
                :
                  // Empty Size box
                  SizedBox(height: 0.0, width: 0.0);
          },
          itemCount: users.length,
        ),
      ),
    );
  }

  // ListTile for Ads
  ListTile buildAdsListTile() {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Color(0xFFDEC20B),
        child: Text('A', style: TextStyle(fontSize: 25, color: Colors.white)),
      ),
      title: Text('Advertiser'),
      subtitle: Text('Some Details about Advertise'),
      trailing: SizedBox(
        height: 28,
        width: 40,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Color(0xFFDEC20B),
            borderRadius: BorderRadius.circular(8.0),
          ),
          position: DecorationPosition.background,
          child: Center(
            child: Text(
              'AD',
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

// ListTile widget
class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
    super.key,
    required this.isTileSelected,
    required Function() onTap,
    required this.name,
    required this.profession,
    required this.image,
  }) : _onTap = onTap;

  final bool isTileSelected;
  final Function() _onTap;

  // For Content
  final String name;
  final String profession;
  final String image;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // Main content
      leading: CircleAvatar(backgroundImage: AssetImage(image), radius: 25.0),
      title: Text(name),
      subtitle: Text(profession),
      trailing: isTileSelected
          ? Icon(Icons.check_circle, size: 25.0)
          : Icon(Icons.circle_outlined, size: 25.0),
      // Styling
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
        side: BorderSide(color: Colors.black),
      ),
      titleAlignment: ListTileTitleAlignment.threeLine,
      titleTextStyle: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w500,
        color: Colors.black,
        letterSpacing: 1.0,
      ),
      subtitleTextStyle: TextStyle(fontSize: 15.0, color: Colors.black),
      // Styling for selected items
      onTap: () {
        // Function which return index
        _onTap();
      },
      selected: isTileSelected,
      selectedTileColor: Colors.black87,
      selectedColor: Colors.white,
    );
  }
}
