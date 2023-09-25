import 'package:flutter/material.dart';
import '../../../constants/constants.dart';

class ViewContantBarScreen extends StatelessWidget {
  const ViewContantBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
     final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
         constraints: BoxConstraints(maxWidth: width * 0.02),
        padding: EdgeInsets.symmetric(horizontal: width * 0.03),
       
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

          ]),
    );
  }
}