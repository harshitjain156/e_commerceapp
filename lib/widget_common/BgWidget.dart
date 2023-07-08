import 'package:e_commerceapp/consts/consts.dart';
import 'package:flutter/cupertino.dart';

Widget BgWidget({Widget? child}){
      return Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage(imgBackground),fit: BoxFit.fill)),
        child: child,
      );
}