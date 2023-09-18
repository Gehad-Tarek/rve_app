import 'package:flutter/material.dart';
import 'package:rev_app/screens/menu_screen/apBar_image_widgett.dart';
import 'package:rev_app/screens/menu_screen/partition_menu_screen.dart';


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
            child:const Stack(
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
