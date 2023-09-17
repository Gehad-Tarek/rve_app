import 'package:flutter/material.dart';
import 'package:rev_app/constants/constants.dart';
import 'package:rev_app/screens/bottom_nav_bar_design.dart';
import 'package:rev_app/screens/enter_new_password_screen/enter_new_password_screen.dart';
import 'package:rev_app/screens/sign_up_screen/sign_up_screen.dart';
import 'package:rev_app/shared/shared_responsive.dart';
import 'package:rev_app/shared/shared_widgets/elevated_button_widget.dart';
import 'package:rev_app/shared/shared_widgets/fild_components.dart';
import 'package:rev_app/shared/shared_widgets/text_button_widget.dart';

class PartitionLogin extends StatefulWidget {
  const PartitionLogin({super.key});
  @override
  State<PartitionLogin> createState() => _PartitionLoginState();
}

class _PartitionLoginState extends State<PartitionLogin> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> userNameKey = GlobalKey<FormState>();
  GlobalKey<FormState> passwordKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Positioned(
      top: height == 640 ? height * 0.2 : height * 0.26,
      left: width * 0.08,
      right: width * 0.08,
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.03, vertical: height * 0.014),
        height: height == 640
            ? height * 0.6
            : responsiveHeighContinerLogib(
                height), // height < 812 ? height * 0.45 : height * 0.5,
        width: width * 0.7,//7
        decoration: BoxDecoration(
          color: Constants.kWhiteColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 5,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            Center(child: Text('Log in', style: Constants.TtitleBlackFont)),
            SizedBox(
              height: height * 0.02,
            ),
            Divider(
              color: Constants.kGreyColor.withOpacity(0.7),
              height: 1,
              endIndent: 5,
              thickness: 1,
              indent: 5,
            ),
            SizedBox(
              height: height * 0.02,
            ),
            CustomField(FieldModel(
              controller: userNameController,
              //   icon: Icons.email,
              labelTxt: 'user Name',
              type: TextInputType.emailAddress,
              onsumbit: () {},
              key: userNameKey,
            )),
            CustomField(FieldModel(
              controller: passwordController,
              //   icon: Icons.email,
              labelTxt: 'Passward',
              type: TextInputType.visiblePassword,
              onsumbit: () {},
              key: passwordKey,
            )),
            SizedBox(
              height: height >= 812 ? height * 0.02 : height * 0.05,
            ),
            ElevatedButtonWidget(
                onPressed: () {
                     Navigator.push(
                    context, MaterialPageRoute(builder: (_) =>const BottomNavBarDesign()));
                },
                height: height * 0.06,
                width: width * 0.73,
                text: 'Log in',
                cBorder: Colors.transparent,
                cButton: Constants.kBlueColor,
                cText: Constants.kWhiteColor,
               alignment: Alignment.center,),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
             const Spacer(),
         
                TextButtonWidget(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context)=>const EnterNewPasswordScreen()));
                  },
                  text: 'Forget Password?',
                  decoration: TextDecoration.underline,
                  colorText: Constants.kGreyColor,
                ),
              ],
            ),
           
          ],
        ),
      ),
    );
  }
}
