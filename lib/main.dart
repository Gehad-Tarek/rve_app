import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:rev_app/screens/intro_screen/intro_screen.dart';
import 'package:rev_app/screens/splash_screen/splash_screen.dart';
import 'package:provider/provider.dart';

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
    return DevicePreview(
        enabled: true,
        builder: (BuildContext context) {
          return MaterialApp(
            useInheritedMediaQuery: true,
            builder: DevicePreview.appBuilder,
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            routes: {
              IntroScreen.routeName: (_) => IntroScreen(),
            },
            home: MySplashScreen(),
          );
        });
  }
}
