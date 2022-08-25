
import 'package:flutter/material.dart';
import 'package:toters/t102.dart';

Container slider(
    String img
    ){
  return
    Container(
      margin: EdgeInsets.symmetric(horizontal: 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
          image: AssetImage("$img"),
          fit: BoxFit.cover,
        ),
      ),
    )

    ;
}



