import 'package:flutter/material.dart';

class Stars{

  int numberStars = 5;


  Stars(this.numberStars);

  final starFull = Container(
    margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0
    ),
    child: Icon(
      Icons.star,
      color: Color(0xFFf2C611),
    ),
  );
  final starHalf = Container(
    margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0
    ),
    child: Icon(
      Icons.star_half,
      color: Color(0xFFf2C611),
    ),
  );
  final starEmpty = Container(
    margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0
    ),
    child: Icon(
      Icons.star_border,
      color: Color(0xFFf2C611),
    ),
  );


  Widget getStars(double numberOfStars, {int maxStars:5} ){
    /*
    This method return a row of stars
    */

    List<Widget> stars = new List<Widget>();
    int fullStars = numberOfStars.truncate();
    int emptyStars = maxStars-fullStars;
    double halfStars = numberOfStars % 1;

    for (int iFull=0; iFull<fullStars; iFull+=1){
      stars.add(starFull);
    }
    if (halfStars > 0.5){
      stars.add(starHalf);
      emptyStars-=1;
    }

    for(int iEmpty = 0; iEmpty < emptyStars; iEmpty+=1){
      stars.add(starEmpty);
    }
    return new Row(
        children: stars
    );
  }

}