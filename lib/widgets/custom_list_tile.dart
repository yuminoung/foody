import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String leadingIconPath;
  final String title;
  final Function onTap;

  CustomListTile({this.leadingIconPath, this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: ImageIcon(
        AssetImage(leadingIconPath),
        color: Colors.black,
      ),
      title: Text(title),
      trailing: ImageIcon(
        AssetImage('assets/icons/right_arrow.png'),
        color: Colors.black,
        size: 12,
      ),
    );
  }
}
