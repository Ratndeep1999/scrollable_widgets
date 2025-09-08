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
              child: ListTile(
                // Main content
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/person20.jpg'),
                  radius: 25.0,
                ),
                title: Text('User Name'),
                subtitle: Text('User Profession'),
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
                subtitleTextStyle: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                ),
                // Styling for selected items
                onTap: () {
                  /// Method for items select or de-select
                  _toggleItemSelection(index);
                },
                selected: isTileSelected,
                selectedTileColor: Colors.black87,
                selectedColor: Colors.white,
              ),
            );
          },

          /// Advertisement Section
          separatorBuilder: (BuildContext context, int index) {
            // If index is fully divisible by 4 the add show otherwise empty size box
            return (index % 4 == 0)
                ?
                  // Advertisement Section
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 4.0,
                      horizontal: 16.0,
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xFFDEC20B),
                          radius: 22.0,
                          child: Text(
                            'A',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Spacer(),
                        SizedBox(
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
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                :
                  // Empty Size box
                  SizedBox(height: 0.0, width: 0.0);
          },
          itemCount: users.length,
        ),
      ),
    );
  }
}
