
 import 'package:flutter/material.dart';

favoriteStarSection() {
  return Row(
    children:
    List.generate(5, (index)=> Icon(Icons.star,color: Colors.yellow,size: 15,))
    ,
  );
}