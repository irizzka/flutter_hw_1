import 'package:flutter/material.dart';
import 'package:flutter_hw_1/main.dart';
import 'package:flutter_hw_1/main_cfg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostWidget extends StatefulWidget {
  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {

MainConfig mainConfig = MainConfig();

  var likedList = ['nazemec.l', 'fwafwa', 'fwafwa', 'xzzz'];
  var hashTagList = [
    'griddynamics_kharkiv',
    'itkharkiv',
    'flutter',
    'workshop'
  ];
  Icon heartInst = Icon(FontAwesomeIcons.heart);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: (){
          //todo  print(ModalRoute.of(context).settings.name);
            if(ModalRoute.of(context).settings.name == null){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
              );
            }
          },

          child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
          children: <Widget>[
            Image.network('https://mir-s3-cdn-cf.behance.net/project_modules/1400_opt_1/5a604a76879045.5c76ccf6c985f.png',
                fit: BoxFit.fitHeight,
                width: MediaQuery.of(context).size.width,
                height: 300),
            Container(
              child: Image.network('https://mir-s3-cdn-cf.behance.net/project_modules/1400_opt_1/f1c7fc74565807.5c37135e961b7.png',
                  fit: BoxFit.fitHeight,
                   width: MediaQuery.of(context).size.width,
                  height: 300),
            ),

          ])
          ),
          /*child: Row(
             children: <Widget>[
               Expanded(
                 //todo
                 child: Image.network('https://mir-s3-cdn-cf.behance.net/project_modules/1400_opt_1/5a604a76879045.5c76ccf6c985f.png',
                   fit: BoxFit.fitHeight,
                  // width: double.infinity,
                   height: 300,
                 ),
               ),
               Expanded(
                 flex: 1,
                 //todo
                 child: Image.network('https://mir-s3-cdn-cf.behance.net/project_modules/1400_opt_1/f1c7fc74565807.5c37135e961b7.png',
                   fit: BoxFit.fitHeight,
                  // width: double.infinity,
                   height: 300,
                 ),
               ),
             ],
          ),*/
        ),

        Container(
          padding: EdgeInsets.all(2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  IconButton(

                    icon: heartInst,
                    onPressed: () {
                      setState(() {
                        //todo
                        if(likedList.contains(mainConfig.userAccount.accountName)){
                            likedList.remove(mainConfig.userAccount.accountName);
                            heartInst = Icon(FontAwesomeIcons.heart);
                        }else{

                          likedList.add(mainConfig.userAccount.accountName);
                          heartInst = Icon(FontAwesomeIcons.solidHeart, color: Colors.red,);
                        }
                      });
                    },
                  ),

                  IconButton(icon: Icon(FontAwesomeIcons.comment), onPressed: () {},),

                  IconButton(icon: Icon(FontAwesomeIcons.telegramPlane), onPressed: () {},)
                ],
              ),
              Row(
                children: <Widget>[
                  IconButton(icon: Icon(FontAwesomeIcons.bookmark), onPressed: () {},),
                ],
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 10, right: 10, bottom: 5),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://mir-s3-cdn-cf.behance.net/user/115/583efe142918233.5dc4404d4f5ef.jpg'),
                radius: 7,
              ),
              SizedBox(
                width: 10,
              ),

              RichText(
                text:
                    TextSpan(
                    text: 'Liked by ',
                    style:
                    TextStyle(fontWeight: FontWeight.normal),
                    children: <TextSpan>[
                      TextSpan(
                        //todo one of from likedList
                        text:'FirstChild',
                        style: TextStyle(fontWeight: FontWeight.w700),
                        // navigate to desired screen
                      ),
                      TextSpan(
                        text:' and ',
                        style: TextStyle(fontWeight: FontWeight.normal),
                        // navigate to desired screen
                      ),
                      TextSpan(
                        //todo others
                        text:' ${likedList.length} ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        // navigate to desired screen
                      )
                    ]),
              ),
            ],
          ),
        ),
         Container(
           padding: EdgeInsets.only(left: 10, right: 10, bottom: 5),
          child: RichText(
             text: TextSpan(
                 text: '${mainConfig.userAccount.accountName} ',
                 style:
                 TextStyle(fontWeight: FontWeight.bold),
                 children: <TextSpan>[
                   TextSpan(
                     text:'${mainConfig.p1.postDescription}',
                     style: TextStyle(fontWeight: FontWeight.normal),
                     // navigate to desired screen
                   ),
                   TextSpan(
                     //todo
                     text:' Show more',
                     style: TextStyle(fontWeight: FontWeight.normal, color: Colors.grey),
                     // navigate to desired screen
                   )
                 ]),
           ),
         ),
        Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          //todo
         // child: Text(mainConfig.hashTagsFromPost),
          child: Row(
            children: <Widget>[
              InkWell(
                child: Text('#wafwa_d '),
                onTap: (){},
              ),
              InkWell(
                onTap: (){},
                child: Text('#wafwa_d '),
              ),
              InkWell(
                onTap: (){},
                child: Text('#Flutter '),
              ),
            ],
          ),
        ),


        Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 5),
          //todo date
          child: Row(
            children: <Widget>[
              Text('November 28, 2019',style: TextStyle(fontSize: 12, color: Colors.grey),)
            ],
          ),
        )
      ],
    );
  }
}
