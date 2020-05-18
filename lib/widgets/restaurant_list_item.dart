import 'package:flutter/material.dart';
import 'dart:math';

class RestaurantListItem extends StatelessWidget {
  final int index;

  RestaurantListItem({this.index});

  @override
  Widget build(BuildContext context) {
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
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Text(
                                '月销1.1k',
                                style: TextStyle(fontSize: 10, fontFamily: ''),
                              ),
                            )
                          ],
                        ),
                        Container(
                          child: Row(children: [
                            Icon(
                              Icons.star,
                              size: 10,
                              color: Colors.red,
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
                      '预计 20分钟送达 (300米)',
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    // color: Colors.lightBlue[100 * (index % 9)],
                    child: Row(
                      children: <Widget>[
                        Card(
                          margin: EdgeInsets.only(right: 8),
                          elevation: 0,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              '在线支付',
                              style: TextStyle(fontSize: 8),
                            ),
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.all(0),
                          elevation: 0,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              '配送自取',
                              style: TextStyle(fontSize: 8),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
