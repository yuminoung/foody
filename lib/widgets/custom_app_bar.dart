import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final Widget leading;
  final Widget trailing;
  final Widget title;
  final bool hasPop;

  CustomAppBar({
    Key key,
    @required this.title,
    this.height = 60,
    this.leading,
    this.trailing,
    this.hasPop = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: SafeArea(
        child: SizedBox(
          height: height,
          child: Row(
            children: <Widget>[
              hasPop
                  ? Expanded(
                      flex: 2,
                      child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            height: 20,
                            child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(Icons.chevron_left)),
                          )),
                    )
                  : Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Container(
                              alignment: Alignment.centerLeft,
                              height: 20,
                              child: leading,
                            ) ??
                            Container(),
                      ),
                    ),
              Expanded(flex: 1, child: title),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                        alignment: Alignment.centerRight,
                        height: 20,
                        child: trailing,
                      ) ??
                      Container(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
