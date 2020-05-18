import 'package:flutter/material.dart';
import 'package:foody/widgets/_export_widgets.dart';

class BottomMe extends StatelessWidget {
  Widget _buildProfileSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      maxRadius: 27,
                      backgroundImage: AssetImage('assets/images/avatar.jpg'),
                    ),
                    maxRadius: 30,
                    // child: Image(
                    //   fit: BoxFit.cover,
                    //   image: AssetImage('assets/images/avatar.jpg'),
                    //   width: MediaQuery.of(context).size.width / 6,
                    //   height: MediaQuery.of(context).size.width / 6,
                    // ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(32.0),
                    child: Text(
                      'Yuminoung',
                      // snapshot.data.uid,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
              ImageIcon(
                AssetImage('assets/icons/right_arrow.png'),
                size: 12,
              )
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image(
              image: AssetImage('assets/images/invite.png'),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        _buildProfileSection(context),
        CustomDivider(),
        CustomListTile(
          leadingIconPath: 'assets/icons/coupon.png',
          title: '优惠卷',
        ),
        Divider(
          indent: 32,
          endIndent: 32,
        ),
        CustomListTile(
          leadingIconPath: 'assets/icons/location.png',
          title: '收货地址',
          onTap: () {
            Navigator.pushNamed(context, '/address');
          },
        )
      ],
    );
  }
}
