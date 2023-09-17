import 'package:flutter/material.dart';
import 'package:rev_app/screens/menu_screen/apBar_image_widgett.dart';
import 'package:rev_app/screens/menu_screen/partition_menu_screen.dart';
import 'package:rev_app/screens/select_login_signup/select_login_signup_screen.dart';
import 'package:rev_app/shared/shared_widgets/app_bar_image_sign_in_up.dart';
import 'package:rev_app/shared/shared_widgets/text_button_widget.dart';
import '../../constants/constants.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: null,
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: height, //- height * .18,
            width: width,
            child: Stack(
              children: [
                ApBarImageWidgett(),
             
                PartitionMenueScreen(),
              
              ],
            ),
          ),
        ],
      ),
    );
  }
}
