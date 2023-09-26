import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class SectionConnectContactUs extends StatelessWidget {
  const SectionConnectContactUs(
      {super.key,
      required this.onTap,
      required this.heighImage,
      required this.image,
      required this.text});
  final double? heighImage;
  final String? image;
  final String? text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: width * 0.045),
        height: height * 0.06,
        width: width * 0.95,
        decoration: BoxDecoration(
          color: Constants.kWhiteColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              '${image}',
              height: heighImage, //height * 0.025,
            ),
            SizedBox(
              width: width * 0.02,
            ),
            Text(
              '${text}',
              style: Constants.TtitleBlackFont.copyWith(
                  fontWeight: FontWeight.normal, fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
