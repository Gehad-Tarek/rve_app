import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rev_app/constants/constants.dart';
import 'package:rev_app/screens/intro_screen/intro_screen.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  //   bool first = true;
  // @override
  // void didChangeDependencies() async {
  //   if (first) {
  //     first = false;
  //     await Future.delayed(  const Duration(seconds: 3), () async {
  //      Navigator.push(context, MaterialPageRoute(builder:(context) =>  const BottomNavBarDesign() ));
  //     });
  //   }
  //   super.didChangeDependencies();
  // }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor:Constants.kWhiteColor ,
      body: Container(
          color:Constants.kWhiteColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Center(
                      child: Container(
                    width: height * 0.3,
                    // height: height * 0.3,
                    padding: EdgeInsets.all(width * 0.05),
                    decoration: BoxDecoration(
                       
                        borderRadius: BorderRadius.circular(height * 0.17)),
                    child: Image.asset(Constants.kLogoImage),
                    // FlutterLogo(size: MediaQuery
                    //     .of(context)
                    //     .size
                    //     .height),
                    // Center(
                    //   child: Text(
                    //     "REV",
                    //     style: TextStyle(
                    //         color: Colors.white,
                    //         fontSize: 18,
                    //         fontWeight: FontWeight.bold),
                    //   ),
                    // ),
                  )),
                  Text("Right Vacation Exchange",
                      style: TextStyle(
                          color: Constants.kBlueColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                ],
              ),
    
              // SizedBox(height: height * 0.1),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, IntroScreen.routeName);
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    backgroundColor: Constants.kBlueColor,
                    fixedSize: Size(width * 0.8, height * 0.06),
                  ),
                  child: Text(
                    "Start",
                    style: TextStyle(
                        color: Constants.kWhiteColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
            ],
          )),
    );
  }
}
