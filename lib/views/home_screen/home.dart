import 'package:e_commerceapp/consts/consts.dart';
import 'package:e_commerceapp/controllers/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller=Get.put(HomeContoller());

    var navbarItem=[
      BottomNavigationBarItem(icon: Image.asset(icHome,width: 26,),label: "Home"),
      BottomNavigationBarItem(icon: Image.asset(icCategories,width: 26),label: "Categories"),
      BottomNavigationBarItem(icon: Image.asset(icCart,width: 26),label: "My Cart"),
      BottomNavigationBarItem(icon: Image.asset(icProfile,width: 26),label: "Profile"),

    ];
    var navBody=[
      Container(color: Colors.indigoAccent,),
      Container(color: Colors.redAccent,),
      Container(color: Colors.black,),
      Container(color: Colors.green,),

    ];
    return Scaffold(
      body: Column(
        children: [
          Obx(()=> Expanded(child: navBody.elementAt(controller.currentNavIndex.value),)),
        ],
      ),
      bottomNavigationBar: Obx(()=>
         BottomNavigationBar(currentIndex: controller.currentNavIndex.value,items: navbarItem,backgroundColor: whiteColor,type: BottomNavigationBarType.fixed,
        selectedItemColor: redColor,
        onTap: (value){
           controller.currentNavIndex.value=value;
        },
        selectedLabelStyle: TextStyle(fontFamily: semibold),),
      ),
    );
  }
}
