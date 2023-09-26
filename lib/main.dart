import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/details_screen/details_screen.dart';
import 'screens/intro_screen/intro_screen.dart';
import 'screens/on_boarding_screen/on_boarding_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
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
  const MyApp({super.key});
/////
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
              useMaterial3: true,
              brightness: Brightness.light,
            ),
            debugShowCheckedModeBanner: false,
            routes: {
              IntroScreen.routeName: (_) => IntroScreen(),
              OnBoardingScreen.routeName: (_) => OnBoardingScreen(),
            },
            // home: const BottomNavBarDesign(),
            //  home: const MySplashScreen(),
            // home :const LoginScreen(),
            //home :const EnterNewPasswordScreen(),
            // home: const SignUpScreen(),
            // home: const SelectLoginSignUpScreen(),
            //  home:const ChooseYourWeek(),
            //   home:const GovernorateScreen(),
           // home: const SelectToChangeScreen(),
          //  home: const ReplyDoneScreen(),
          // home: const CalenderScreen(),
          home: const DetailsScreen(),
          );
        });
  }
}
