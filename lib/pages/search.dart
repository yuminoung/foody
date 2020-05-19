import 'package:flutter/material.dart';
import 'package:foody/widgets/_export_widgets.dart';
import 'package:foody/widgets/custom_app_bar.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        hasPop: true,
        title: Headline(
          title: '搜索',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100), color: Colors.black12),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: <Widget>[
                Icon(Icons.search),
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: '搜索',
                      hintStyle: TextStyle(fontSize: 12),
                      border: InputBorder.none,
                    ),
                    autofocus: true,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
