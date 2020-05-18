import 'package:flutter/material.dart';
import 'package:foody/widgets/_export_widgets.dart';

class BottomHome extends StatelessWidget {
  final List<String> foodList = [
    '地道中餐',
    '火锅麻辣烫',
    '日料寿司',
    '甜品奶茶',
    '东南亚美食',
    '金盒饭餐厅',
    '小黄团购',
    '0元爆品',
    '超市',
    '米粉'
  ];

  Widget _buildCarousel() {
    return SliverGrid.count(
      childAspectRatio: 3,
      crossAxisCount: 1,
      children: <Widget>[
        Container(
          child: Padding(padding: EdgeInsets.all(8), child: Carousel()),
        ),
      ],
    );
  }

  Widget _buildMenu() {
    return SliverGrid.count(
      childAspectRatio: 1,
      crossAxisCount: 5,
      children: List.generate(10, (index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image(
              image: AssetImage('assets/images/food.png'),
              width: 40,
              height: 40,
            ),
            Text(
              foodList[index],
              style: TextStyle(fontSize: 10),
            ),
          ],
        );
      }),
    );
  }

  Widget _buildSubmenu() {
    return SliverGrid.count(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0),
          child: Container(
            color: Colors.red,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0, top: 8.0, bottom: 8.0),
          child: Container(color: Colors.blue),
        )
      ],
      crossAxisCount: 2,
      childAspectRatio: 2.5,
      crossAxisSpacing: 8,
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        _buildCarousel(),
        _buildMenu(),
        SliverDivider(),
        _buildSubmenu(),
        SliverDivider(),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '推荐商家',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
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
    // ListView(children: [
    //   Container(
    //     child: Padding(padding: EdgeInsets.all(8), child: Carousel()),
    //   ),
    // ]);
  }
}
