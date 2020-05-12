import 'dart:collection';

import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget{

  List<HashMap<String,String>> revieuwers = new List<HashMap<String,String>>();

  ReviewList(this.revieuwers);

  List <Review> getReviewList(List<HashMap<String, String>> reviewerHash){
    List<Review> reviewsList = new List<Review>();
    for(int i = 0; i<reviewerHash.length; i++){
      HashMap<String,String> item = reviewerHash[i];
      reviewsList.add(
          new Review(
            item['image'],
            item['name'],
            item['details'],
            item['comment'],
            double.parse(item['stars'])
          )
      );
    }
    return reviewsList;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:getReviewList(revieuwers),
    );
  }
}