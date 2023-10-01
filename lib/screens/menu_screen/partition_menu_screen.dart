import 'dart:io';
import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import 'all_menu_widget.dart';
import 'profile_section_widget.dart';

class PartitionMenueScreen extends StatefulWidget {
  const PartitionMenueScreen({super.key});

  @override
  State<PartitionMenueScreen> createState() => _PartitionMenueScreenState();
}

class _PartitionMenueScreenState extends State<PartitionMenueScreen> {
  File? pickedImage;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Positioned(
      top: height * 0.17,
      left: width * 0.08,
      right: width * 0.08,
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.03, vertical: height * 0.014),
        height: height > 800 ? height * 0.71 : height * 0.74,
        width: width * 0.74,
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProfileSectionWidget(),
            SizedBox(
              height: height * 0.006,
            ),
            Text(
              '  Menu',
              style: Constants.TtitleBlackFont.copyWith(fontSize: 17),
            ),
            SizedBox(
              height: height * 0.01,
            ),
           const AllMenuWidget(),
          ],
        ),
      ),
    );
  }
}
