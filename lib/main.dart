import 'package:flutter/material.dart';
import 'package:flutter_hw_1/feed_widget.dart';
import 'package:flutter_hw_1/main_bottom_bar.dart';
import 'package:flutter_hw_1/post_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grid Dynamics hw1',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        primaryColor: Colors.black,
        bottomAppBarColor: Colors.white10,
        textTheme: TextTheme(body1: TextStyle(fontSize: 12)),
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'GridInst'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FeedWidget()),
            );
          },
        ),
        centerTitle: true,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'GRIDDYNAMICS_UA',
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 14,
                  color: Colors.grey),
            ),
            Text(
              'Posts',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
            ),
          ],
        ),
      ),
      body: Center(
        child: PostWidget(),
      ),

      bottomNavigationBar: MainBottomBar(),
    );
  }
}


