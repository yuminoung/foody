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
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
          ),
          autofocus: true,
        ),
      ),
    );
  }
}
