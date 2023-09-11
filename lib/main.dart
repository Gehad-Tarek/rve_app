import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rev_app/screens/bottom_nav_bar_design.dart';
import 'package:rev_app/screens/intro_screen/intro_screen.dart';
import 'package:rev_app/screens/on_boarding_screen/on_boarding_screen.dart';
import 'package:rev_app/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(MyApp());
  // runApp(MultiProvider(providers: [
  //   ChangeNotifierProvider<LanguageSettingsProvider>(
  //     create: (context) => LanguageSettingsProvider(),
  //   ),
  //   ChangeNotifierProvider<ProductsNameProvider>(
  //     create: (context) => ProductsNameProvider(),
  //   ),
  // ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return DevicePreview(
        enabled: true,
        builder: (BuildContext context) {
          return MaterialApp(
            useInheritedMediaQuery: true,
            builder: DevicePreview.appBuilder,
            title: 'Rve',
            theme: ThemeData(
              //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
              brightness: Brightness.light,
              // textTheme: GoogleFonts.lailaTextTheme(ThemeData.light()
              //     .textTheme), //gabrielaTextTheme //montserratTextTheme
            ),
            debugShowCheckedModeBanner: false,
            routes: {
              IntroScreen.routeName: (_) => IntroScreen(),
              OnBoardingScreen.routeName:(_)=>OnBoardingScreen(),
            },
            //home: BottomNavBarDesign(),
            home :const MySplashScreen(),
            // const MySplashScreen(),
          );
        });
  }
}
