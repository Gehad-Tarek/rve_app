import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class MiniImagesBackGroundWidget extends StatelessWidget {
  const MiniImagesBackGroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
     final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return   AspectRatio(
              aspectRatio: 1.3 / 0.6,
              child: ListView.builder(
                  //   padding: EdgeInsets.only(right: width*width*0.5),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: width * 0.037),
                      height: height * 0.1,
                      width: width * 0.38,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(
                                Constants.kFantasticImage,
                              ),
                              fit: BoxFit.cover)),
                    );
                  }),
            );
  }
}