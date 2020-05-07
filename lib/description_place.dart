import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DescriptionPlace extends StatelessWidget{

  String namePlace;
  double starsNum;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.starsNum, this.descriptionPlace);

  final star_full = Container(
    margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0
    ),
    child: Icon(
      Icons.star,
      color: Color(0xFFf2C611),
    ),
  );
  final star_half = Container(
    margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0
    ),
    child: Icon(
      Icons.star_half,
      color: Color(0xFFf2C611),
    ),
  );
  final star_empty = Container(
    margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0
    ),
    child: Icon(
      Icons.star_border,
      color: Color(0xFFf2C611),
    ),
  );



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final description = Container(
      margin: new EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0
      ),
      child: Text(
        descriptionPlace,
        style: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Colors.black
        ),
      ),
    );


    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left:20.0,
            right: 20.0,
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          )
        ),
        Container(
          child: getStars(starsNum),
        )
        
      ],
    );
    return Column(
      children: <Widget>[
        titleStars,
        description
      ],
    );
  }


  Widget getStars(double numberOfStars, {int maxStars:5}){
    /*
    This method return a row of stars
    */
    List<Widget> stars = new List<Widget>();
    int fullStars = numberOfStars.truncate();
    int emptyStars = maxStars-fullStars;
    double halfStars = numberOfStars % 1;

    for (int iFull=0; iFull<fullStars; iFull+=1){
      stars.add(star_full);
    }
    if (halfStars > 0.5){
      stars.add(star_half);
      emptyStars-=1;
    }

    for(int iEmpty = 0; iEmpty < emptyStars; iEmpty+=1){
      stars.add(star_empty);
    }
    return new Row(
      children: stars
    );
  }
}