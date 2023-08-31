import 'package:flutter/material.dart';
import 'package:rev_app/screens/intro_screen/intro_screen.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
        color: Color(0xfff8f8f8),
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
                      // color: Colors.blue,
                      borderRadius: BorderRadius.circular(height * 0.17)),
                  child: Image.asset("assets/images/cropped-IMG_0679-1.png"),
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
                        color: Color(0xff0408a6),
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
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
                  backgroundColor: Colors.blue,
                  fixedSize: Size(width * 0.6, height * 0.06),
                ),
                child: const Text(
                  "Start",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                )),
          ],
        ));
  }
}
