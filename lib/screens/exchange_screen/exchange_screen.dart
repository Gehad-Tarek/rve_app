import 'package:flutter/material.dart';
import 'package:rev_app/screens/exchange_screen/partition_exchange_screen.dart';
import 'package:rev_app/shared/shared_widgets/app_bar_image_sign_in_up.dart';
import '../../constants/constants.dart';

class ExchangeScreen extends StatefulWidget {
  const ExchangeScreen({super.key});

  @override
  State<ExchangeScreen> createState() => _ExchangeScreenState();
}

class _ExchangeScreenState extends State<ExchangeScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: null,
      body: ListView(padding: EdgeInsets.zero, shrinkWrap: true, children: [
        SizedBox(
          height: height, //- height * .18,
          width: width,
          child: Stack(
            children: [
              AppBarImageSigninAndUp(
                  heightAppBarImage: height * 0.5,
                  paddingHeiImage: height <= 667 ? 1 : height * 0.0035,
                  widthImage: width * 0.4,
                  fontSizedStyle: Constants.TwhileBoldFont),
              const PartitionExchangeScreen(),
            ],
          ),
        ),
      ]),
    );
  }
}
