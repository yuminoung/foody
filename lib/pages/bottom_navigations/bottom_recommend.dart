import 'package:flutter/material.dart';
import 'package:foody/widgets/_export_widgets.dart';

class BottomRecommend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverFixedExtentList(
          itemExtent: 100.0,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return RestaurantListItem(
                index: index,
              );
            },
          ),
        ),
      ],
    );
  }
}
