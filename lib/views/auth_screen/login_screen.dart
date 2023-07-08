import 'package:e_commerceapp/consts/consts.dart';
import 'package:e_commerceapp/consts/lists.dart';
import 'package:e_commerceapp/views/auth_screen/signup_screen.dart';
import 'package:e_commerceapp/widget_common/AppLogo.dart';
import 'package:e_commerceapp/widget_common/BgWidget.dart';
import 'package:e_commerceapp/widget_common/CustomTextField.dart';
import 'package:e_commerceapp/widget_common/CutomButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_commerceapp/consts/strings.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            "Log in to $appname".text.fontFamily(bold).white.size(18).make(),
            15.heightBox,
            Column(
              children: [
                customTextField("Email", "Enter email"),
                customTextField('Password', 'Enter password'),
                Align(
                  alignment: Alignment.centerRight,
                    child: TextButton(onPressed: (){}, child: "Forget Password?".text.make())),
                10.heightBox,
                CustomButton(title: login,onPress: (){},color: redColor,textColor: whiteColor).box.width(context.screenWidth*.8).make(),
                5.heightBox,
                "Create new account?".text.color(fontGrey).make(),
                5.heightBox,
                CustomButton(title: "SignUp",color: lightGolden,onPress: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));

                },textColor: redColor).box.width(context.screenWidth*.8).make(),
                5.heightBox,
                "Login with".text.color(fontGrey).make(),
                5.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: List.generate(3, (index) => Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: CircleAvatar(
                       backgroundColor: lightGrey,
                       radius: 25,
                       child: Image.asset(socialIcons[index],width: 30,),
                     ),
                   )),
                )


              ],
            ).box.white.rounded.padding(EdgeInsets.all(20)).width(context.screenWidth*.8).shadowSm.make(),

          ],
        ),
      ),
    ));
  }
}
