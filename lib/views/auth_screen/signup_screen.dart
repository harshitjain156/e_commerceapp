import 'package:e_commerceapp/consts/consts.dart';
import 'package:e_commerceapp/consts/lists.dart';
import 'package:e_commerceapp/widget_common/AppLogo.dart';
import 'package:e_commerceapp/widget_common/BgWidget.dart';
import 'package:e_commerceapp/widget_common/CustomTextField.dart';
import 'package:e_commerceapp/widget_common/CutomButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_commerceapp/consts/strings.dart';
import 'package:flutter/rendering.dart';
class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? isCheck=false;
  @override
  Widget build(BuildContext context) {
    return BgWidget(child:
    Scaffold(
      resizeToAvoidBottomInset: false,
      body:
      Center(
        child: Column(
          children: [
            (context.screenHeight*.1).heightBox,
            AppLogo(),
            15.heightBox,
            "Join the $appname".text.fontFamily(bold).white.size(18).make(),
            15.heightBox,
            Column(
              children: [
                customTextField("Name", "Enter name"),
                customTextField("Email", "Enter email"),
                customTextField('Password', 'Enter password'),
                customTextField("Re-type Password", "Re-enter password"),
                10.heightBox,
                Row(
                  children: [
                    Checkbox(
                      value: isCheck, onChanged: (newValue){
                      setState(() {
                        isCheck=newValue;
                      });
                    },checkColor: Colors.white,activeColor: redColor,),
                    5.widthBox,
                    Expanded(
                      child: RichText(text: TextSpan(children: [
                        TextSpan(text: "I agree to the ",style: TextStyle(
                          fontFamily: bold,
                          color: fontGrey
                        )),
                        TextSpan(text: "Terms and Condition & Privacy policy",style: TextStyle(
                            fontFamily: bold,
                            color: redColor
                        ))
                      ])),
                    )
                  ],
                ),
                CustomButton(title:"Signup",onPress: (){},color: isCheck==true?redColor:lightGrey,textColor: whiteColor).box.width(context.screenWidth*.8).make(),
                5.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(text: TextSpan(children: [
                      TextSpan(text: "Already have an account? ",style: TextStyle(
                          fontFamily: bold,
                          color: fontGrey
                      )),
                      TextSpan(text: "Login",style: TextStyle(
                          fontFamily: bold,
                          color: redColor
                      ))
                    ]))
                  ],
                ).onTap(() {Navigator.pop(context);}),



              ],
            ).box.white.rounded.padding(EdgeInsets.all(20)).width(context.screenWidth*.8).shadowSm.make(),

          ],
        ),
      ),
    ));;
  }
}
