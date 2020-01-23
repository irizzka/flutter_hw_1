import 'package:flutter/material.dart';
import 'package:flutter_hw_1/main_bottom_bar.dart';
import 'package:flutter_hw_1/post_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FeedWidget extends StatefulWidget {
  @override
  _FeedWidgetState createState() => _FeedWidgetState();
}

class _FeedWidgetState extends State<FeedWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.photo_camera,
          color: Colors.grey,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(),
          );
        },
      ),
          actions: <Widget>[
            IconButton(icon: Icon(FontAwesomeIcons.paperPlane), onPressed: () {}, iconSize: 20,),
          ],
          title: Text('Gstagram'),
          centerTitle: true,
    ),
    body: ListView(
      children: <Widget>[
        PostWidget(),
        PostWidget()
      ],
    ),
    bottomNavigationBar: MainBottomBar(),);
  }
}
