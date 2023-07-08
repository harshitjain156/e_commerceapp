import 'package:e_commerceapp/consts/consts.dart';
import 'package:flutter/material.dart';

Widget CustomButton({String? title, onPress, color,textColor}){
  return ElevatedButton(onPressed:onPress, child: title!.text.color(textColor).fontFamily(bold).make(),
  style: ElevatedButton.styleFrom(
    primary: color,
    padding: EdgeInsets.all(5),
  ),);
}