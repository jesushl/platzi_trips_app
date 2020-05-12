import 'dart:ffi';

import 'package:flutter/material.dart';
import 'stars.dart';

class Review extends StatelessWidget{



  String pathImage = "images/dog.jpg";
  String userNameStr = "Varicas Holanda";
  String details = "1 review and 5 photos";
  String comment = "I am a dog Im not what Im doing here";
  double userStarts = 3.5;
  int maxNumberOfStars = 5;

  Review(this.pathImage, this.userNameStr, this.details, this.comment, this.userStarts);



  @override
  Widget build(BuildContext context) {

    var stars = new Stars(maxNumberOfStars);

    final userComments = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Ubuntu",
          fontSize: 13.0,
          fontWeight: FontWeight.w900,
          color: Color(0xFFa3a5a7),
        ),
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Ubuntu",
            fontSize: 13.0,
            color: Color(0xFFa3a5a7),
        ),
      ),
    );

    final userInfoAndStars = Container(
      child: Row(
        children: <Widget>[
          userInfo,
          stars.getStars(userStarts),
        ],
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        userNameStr,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Ubuntu",
          fontSize: 17.0
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfoAndStars,
        userComments,
      ],
    );


    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        ),
      ),
    );


    return Row(
      children: <Widget>[
        photo
      ],
    );
  }

}