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

  List<String> _titles = ['Home', 'Recommend', 'Fresh', 'Order', 'Me'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Headline(title: _titles[_index]),
      ),
      body: _bottomPages[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Recomemded')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Fresh')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Order')),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('Me'))
        ],
      ),
    );
  }
}
