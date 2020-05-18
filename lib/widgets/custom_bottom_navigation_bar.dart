import 'package:flutter/material.dart';

/* 
Taken from my it project, custom bottom app bar and custom bottom navigation bar
*/

class CustomBottomAppBarItem {
  final String iconImagePath;
  final String title;
  CustomBottomAppBarItem({this.iconImagePath, this.title});
}

class CustomBottomNavigationBar extends StatefulWidget {
  final Color selectedColor;
  final Color color;
  final double height;
  final double iconSize;
  final List<CustomBottomAppBarItem> items;
  final ValueChanged<int> selectedIndex;
  final double iconActiveSize;

  CustomBottomNavigationBar({
    this.selectedColor,
    this.color,
    this.height: 60,
    this.iconSize: 20,
    this.iconActiveSize: 32,
    this.items,
    this.selectedIndex,
  });

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  void _updateIndex(int index) {
    setState(() {
      _selectedIndex = index;
      widget.selectedIndex(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        children: List.generate(widget.items.length, (index) {
          return _buildTabItem(
              item: widget.items[index], index: index, onPressed: _updateIndex);
        }),
      ),
    );
  }

  Widget _buildTabItem({
    CustomBottomAppBarItem item,
    int index,
    ValueChanged<int> onPressed,
  }) {
    // Color color = _selectedIndex == index ? widget.selectedColor : widget.color;

    return Expanded(
      child: SizedBox(
        height: widget.height,
        child: Material(
          type: MaterialType.transparency,
          child: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () => onPressed(index),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ImageIcon(AssetImage(item.iconImagePath),
                      color:
                          _selectedIndex == index ? Colors.black : Colors.grey,
                      size: widget.iconSize
                      // size: _selectedIndex == index
                      //     ? widget.iconActiveSize
                      //     : widget.iconSize,
                      ),
                  Text(
                    item.title,
                    style: TextStyle(
                        color: _selectedIndex == index
                            ? Colors.black
                            : Colors.grey,
                        fontSize: 12,
                        fontWeight: _selectedIndex == index
                            ? FontWeight.bold
                            : FontWeight.normal),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
