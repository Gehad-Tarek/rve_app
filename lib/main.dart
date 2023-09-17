import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rev_app/screens/bottom_nav_bar_design.dart';
import 'package:rev_app/screens/choose_your_week/choose_your_week.dart';
import 'package:rev_app/screens/enter_new_password_screen/enter_new_password_screen.dart';
import 'package:rev_app/screens/login_screen/login_screen.dart';
import 'package:rev_app/screens/select_login_signup/select_login_signup_screen.dart';
import 'package:rev_app/screens/sign_up_screen/sign_up_screen.dart';
import 'screens/intro_screen/intro_screen.dart';
import 'screens/on_boarding_screen/on_boarding_screen.dart';
import 'screens/splash_screen/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
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
              useMaterial3: true,
              brightness: Brightness.light,
            ),
            debugShowCheckedModeBanner: false,
            routes: {
              IntroScreen.routeName: (_) => IntroScreen(),
              OnBoardingScreen.routeName: (_) => OnBoardingScreen(),
            },
            home: const BottomNavBarDesign(),
          //  home: const MySplashScreen(),
            // home :const LoginScreen(),
            //home :const EnterNewPasswordScreen(),
            // home: const SignUpScreen(),
           // home: const SelectLoginSignUpScreen(),
         //  home:const ChooseYourWeek(),
          );
        });
  }
}
