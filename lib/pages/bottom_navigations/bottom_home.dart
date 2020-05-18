import 'package:flutter/material.dart';
import 'package:foody/widgets/_export_widgets.dart';
import 'dart:math';

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
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: <Widget>[
                    Image(
                      image: AssetImage('assets/images/food.png'),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text('餐厅 $index',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        index % 2 == 0 ? '独家' : '1.99运费',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.orange,
                                            fontFamily: ''),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16.0),
                                        child: Text(
                                          '月销1.1k',
                                          style: TextStyle(
                                              fontSize: 10, fontFamily: ''),
                                        ),
                                      )
                                    ],
                                  ),
                                  Container(
                                    child: Row(children: [
                                      Icon(
                                        Icons.star,
                                        size: 10,
                                      ),
                                      Text(
                                        (Random().nextDouble() + 4.0)
                                            .toString()
                                            .substring(0, 3),
                                        style: TextStyle(fontSize: 10),
                                      )
                                    ]),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '预计',
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              color: Colors.lightBlue[100 * (index % 9)],
                              child: Text('List Item $index'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
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
