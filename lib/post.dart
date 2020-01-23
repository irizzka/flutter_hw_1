import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Post {

  // post img
  List<Image> imagesList;
  List likesList;
  List commentsList;
  List hashTagsList;
  String publishDate;
  String postDescription;
  Icon postIconHeart;


  Icon isLiked(String accountName) {
    return likesList.contains(accountName) ?
    Icon(FontAwesomeIcons.solidHeart, color: Colors.red) : Icon(
        FontAwesomeIcons.heart);
  }

  Post({@required this.imagesList, this.likesList, this.commentsList, this.hashTagsList,
      this.postIconHeart, this.publishDate, this.postDescription});


}