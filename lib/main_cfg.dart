import 'package:flutter/cupertino.dart';
import 'package:flutter_hw_1/account.dart';
import 'package:flutter_hw_1/post.dart';

class MainConfig {
  List<Post> postsList = [];

  Account userAccount = Account(
      accountName: 'griddynamics_ua',
      accountAvatar: NetworkImage(
          'https://mir-s3-cdn-cf.behance.net/user/115/39eb23241954597.5cba1b16ba712.jpg'));

  Post p1 = Post(
    imagesList: [
      Image.network(
          'https://mir-s3-cdn-cf.behance.net/project_modules/1400_opt_1/5a604a76879045.5c76ccf6c985f.png'),
      Image.network(
          'https://mir-s3-cdn-cf.behance.net/project_modules/1400_opt_1/f1c7fc74565807.5c37135e961b7.png'),
    ],
    postDescription:
        'Welcome to the Flutter workshop from Grid Dynamics. In this course, you will learn how to create Flutter applications efficiently and simply, as every lecture comes with a full coding screencast and broadcasting code on a laptop.We are updating this course frequently, as flutter and dart are in their early stages of development.So what are you waiting for? 📆 The first class will be on January 20. 📌 More info and registration are on our bio.',
  );

  Post p2 = Post(
    imagesList: [
      Image.network('https://mir-s3-cdn-cf.behance.net/project_modules/1400_opt_1/a7a43974565807.5c546003399bb.png',),
    ],
    postDescription: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
  );


}
