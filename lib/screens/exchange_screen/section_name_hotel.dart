import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../shared/shared_widgets/text_button_widget.dart';
import '../details_screen/details_screen.dart';

class SectionNameHotel extends StatelessWidget {
  const SectionNameHotel({super.key});

  @override
  Widget build(BuildContext context) {
     final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return    Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: height * 0.01),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Rixos Hotel',
                        style: Constants.TtitleBlackFont.copyWith(
                            fontSize: 16, height: 1.1),
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      Text(
                        'Sharm El shikh',
                        style: Constants.TtitleBlackFont.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            height: 1.2),
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      Text(
                        'Room Number:G 114',
                        style:
                            TextStyle(color: Constants.kBlueColor, height: 1.3),
                      ),
                    ],
                  ),
                ),
                TextButtonWidget(
                    onPressed: () {
                        Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const DetailsScreen()));
                    },
                    text: 'View Details',
                    decoration: TextDecoration.underline,
                    colorText: Constants.kBlueColor)
              ],
            );
  }
}