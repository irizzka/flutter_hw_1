import 'package:flutter/material.dart';
import 'package:flutter_hw_1/feed_widget.dart';
import 'package:flutter_hw_1/main_cfg.dart';

class MainBottomBar extends StatefulWidget {

  @override
  _MainBottomBarState createState() => _MainBottomBarState();
}

class _MainBottomBarState extends State<MainBottomBar> {

  MainConfig mainConfig = MainConfig();

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      notchMargin: 6.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FeedWidget()),
              );
            },
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              size: 30,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.add_circle_outline,
              size: 30,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.favorite_border,
              size: 30,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: CircleAvatar(
              radius: 14,
              backgroundImage:
                    mainConfig.userAccount.accountAvatar,
            ),
            onPressed: () {
            },
          ),
        ],
      ),
    );
  }
}