import 'package:flutter/material.dart';
import 'package:foody/pages/_export_pages.dart';
import '../widgets/_export_widgets.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _index = 0;

  List<Widget> _bottomPages = [
    BottomHome(),
    BottomRecommend(),
    BottomFresh(),
    BottomOrder(),
    BottomMe()
  ];

  List<Widget> _titles = [
    Headline(
      title: '小黄送餐',
    ),
    Headline(
      title: '美食推荐',
    ),
    Headline(
      title: '生鲜超市',
    ),
    Headline(
      title: '订单',
    ),
    Headline(
      title: '我的',
    ),
  ];

  Widget _buildCustomAppBarLeading() {
    return _index == 0
        ? GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              Navigator.pushNamed(context, '/address');
            },
            child: Row(
              children: <Widget>[
                ImageIcon(
                  AssetImage("assets/icons/location.png"),
                  size: 20,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      'Melbourne 3000',
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                      maxLines: 1,
                    ),
                  ),
                )
              ],
            ),
          )
        : Container();
  }

  Widget _buildCustomAppBarTrailing() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        _index == 0
            ? Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: ImageIcon(
                  AssetImage("assets/icons/qr.png"),
                  size: 20,
                ),
              )
            : Container(),
        _index == 0 || _index == 1 || _index == 2 || _index == 3
            ? GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/search');
                },
                child: ImageIcon(
                  AssetImage("assets/icons/search.png"),
                  size: 20,
                ),
              )
            : ImageIcon(
                AssetImage("assets/icons/setting.png"),
                size: 20,
              ),
      ],
    );
  }

  Widget _buildCustomAppBar() {
    return CustomAppBar(
      title: _titles[_index],
      leading: _buildCustomAppBarLeading(),
      trailing: _buildCustomAppBarTrailing(),
    );
  }

  Widget _buildBottomAppBar() {
    return CustomBottomNavigationBar(
      selectedColor: Colors.red,
      selectedIndex: (index) {
        setState(() {
          _index = index;
        });
      },
      items: [
        CustomBottomAppBarItem(
            iconImagePath: "assets/icons/home.png", title: "首页"),
        CustomBottomAppBarItem(
            iconImagePath: "assets/icons/recommend.png", title: "美食推荐"),
        CustomBottomAppBarItem(
            iconImagePath: "assets/icons/fresh.png", title: "生鲜超市"),
        CustomBottomAppBarItem(
            iconImagePath: "assets/icons/bill.png", title: "订单"),
        CustomBottomAppBarItem(
            iconImagePath: "assets/icons/profile.png", title: "我的")
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildCustomAppBar(),
        body: _bottomPages[_index],
        bottomNavigationBar: _buildBottomAppBar());
  }
}
