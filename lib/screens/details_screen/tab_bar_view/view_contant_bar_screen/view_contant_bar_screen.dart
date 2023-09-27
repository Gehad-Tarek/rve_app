import 'package:flutter/material.dart';

import '../../../../constants/constants.dart';

class ViewContantBarScreen extends StatelessWidget {
  const ViewContantBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      //  constraints: BoxConstraints(maxWidth: width * 0.02),
      padding: EdgeInsets.symmetric(horizontal: width * 0.03),
      //width: width,
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: width * 0.3,
                child: Stack(
                  //  textDirection: TextDirection.ltr,
                  // clipBehavior: Clip.antiAliasWithSaveLayer,
                  //fit: StackFit.passthrough,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      // radius: 20,
                      minRadius: 15,
                      backgroundImage: AssetImage('${Constants.kBeachImage}'),
                    ),
                    Positioned(
                      left: width * 0.045,
                      child: CircleAvatar(
                        maxRadius: 25,
                        // radius: 20,
                        minRadius: 15,
                        backgroundImage:
                            AssetImage('${Constants.kFantasticImage}'),
                      ),
                    ),
                    Positioned(
                      left: width * 0.09,
                      child: CircleAvatar(
                        maxRadius: 25,
                        // radius: 20,
                        minRadius: 15,
                        backgroundImage: AssetImage('${Constants.kBeachImage}'),
                      ),
                    ),
                    Positioned(
                      left: width * 0.15,
                      child: CircleAvatar(
                        maxRadius: 25,
                        // radius: 20,
                        minRadius: 15,
                        backgroundImage:
                            AssetImage('${Constants.kFantasticImage}'),
                      ),
                    ),
                  ],
                ),
              ),
              const Text(
                ' 99+ people Have Adventure',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
