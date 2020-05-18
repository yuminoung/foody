import 'package:flutter/material.dart';

class SliverDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        color: Color.fromRGBO(237, 242, 247, 1),
        height: 8,
      ),
    );
  }
}
