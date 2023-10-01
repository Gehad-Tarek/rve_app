import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../shared/shared_widgets/app_bar_image_sign_in_up.dart';
import 'partition_edit_user_name_screen.dart';
class EditUserNameScreen extends StatefulWidget {
  const EditUserNameScreen({super.key});
  @override
  State<EditUserNameScreen> createState() => _EditUserNameScreenState();
}
class _EditUserNameScreenState extends State<EditUserNameScreen> {
   GlobalKey<FormState> _formKeyEditUserName = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
      final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: null,
      body: Form(
        key: _formKeyEditUserName,
        child: ListView(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          children: [
           SizedBox(
              height: height, //- height * .18,
              width: width,
              child:  Stack(
                children: [
                      AppBarImageSigninAndUp(heightAppBarImage: height * 0.55,paddingHeiImage: height == 640 ? 10: height * 0.1,widthImage: width*0.44,fontSizedStyle: Constants.TwhileBoldFont,),
               const  PartitionEditUserNameScreen(),
                      Positioned(
                  top: height * 0.08,
                  // left: width * 0.08,
                  // right: width * 0.08,
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Constants.kWhiteColor,
                        size: 25,
                      ))),
                ],
              ),
            ),
        ]),
      ),
    );
  }
}

