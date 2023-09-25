import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../constants/constants.dart';
import '../languages_screen/language_screen.dart';
import 'menu_widget.dart';

class AllMenuWidget extends StatelessWidget {
  const AllMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        MenuWidget(
          width: width,
          height: height,
          widget: ListTile(
            leading: Icon(
              FontAwesomeIcons.houseChimney,
              color: Constants.kBlueColor,
            ),
            title: const Text(
              'Home',
            ),
            textColor: Constants.kBlueColor,
            onTap: () {},
          ),
        ),
        SizedBox(
          height: height * 0.01,
        ),
        MenuWidget(
          width: width,
          height: height,
          widget: ListTile(
            leading: Icon(
              FontAwesomeIcons.handHoldingHand,
              color: Constants.kBlueColor,
            ),
            title: const Text(
              'Exchange',
            ),
            textColor: Constants.kBlueColor,
            trailing: Container(
              alignment: Alignment.center,
              height: height * 0.03,
              width: width * 0.075,
              decoration: BoxDecoration(
                color: Constants.kRedColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'New',
                style: TextStyle(color: Constants.kWhiteColor),
              ),
            ),
            onTap: () {},
          ),
        ),
        SizedBox(
          height: height * 0.01,
        ),
        MenuWidget(
          width: width,
          height: height,
          widget: ListTile(
            leading: Icon(
              Icons.star,
              color: Constants.kBlueColor,
            ),
            title: const Text(
              'My Favorites',
            ),
            textColor: Constants.kBlueColor,
            trailing: Container(
              alignment: Alignment.center,
              height: height * 0.03,
              width: width * 0.075,
              decoration: BoxDecoration(
                color: Constants.kRedColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'Soon',
                style: TextStyle(color: Constants.kWhiteColor),
              ),
            ),
            onTap: () {},
          ),
        ),
        SizedBox(
          height: height * 0.01,
        ),
        MenuWidget(
          width: width,
          height: height,
          widget: ListTile(
            leading: Image.asset(
              '${Constants.kAboutUsImages}',
              height: height * 0.04,
            ),
            title: const Text(
              'About us',
            ),
            textColor: Constants.kBlueColor,
            onTap: () {},
          ),
        ),
        SizedBox(
          height: height * 0.01,
        ),
        MenuWidget(
          width: width,
          height: height,
          widget: ListTile(
            leading: Icon(
              Icons.wifi_calling_3,
              color: Constants.kBlueColor,
            ),
            title: const Text(
              'Countact Us',
            ),
            textColor: Constants.kBlueColor,
            onTap: () {},
          ),
        ),
        SizedBox(
          height: height * 0.01,
        ),
        MenuWidget(
          width: width,
          height: height,
          widget: ListTile(
            leading: Icon(
              Icons.language,
              color: Constants.kBlueColor,
            ),
            title: const Text(
              'Language',
            ),
            textColor: Constants.kBlueColor,
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder:(context)=>const LanguageScreen()));
            },
          ),
        ),
        SizedBox(
          height: height * 0.01,
        ),
        MenuWidget(
          width: width,
          height: height,
          widget: ListTile(
            leading: Icon(
              FontAwesomeIcons.gears,
              color: Constants.kBlueColor,
            ),
            title: const Text(
              'Setting',
            ),
            textColor: Constants.kBlueColor,
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
