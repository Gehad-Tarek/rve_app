import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rev_app/generated/l10n.dart';
import 'package:rev_app/screens/splash_screen/splash_screen.dart';
import 'screens/bottom_nav_bar_design.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
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
            localizationsDelegates:const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
            ],
           // supportedLocales: S.delegate.supportedLocales,
  
            locale:const Locale('ar'),

  supportedLocales:const [
    Locale('en'), // English
    Locale('ar'), 
  ],
            routes: {
              IntroScreen.routeName: (_) => IntroScreen(),
              OnBoardingScreen.routeName: (_) => OnBoardingScreen(),
            },
            // home: const BottomNavBarDesign(),
            home: const MySplashScreen(),
            // home :const LoginScreen(),
            //home :const EnterNewPasswordScreen(),
            // home: const SignUpScreen(),
            // home: const SelectLoginSignUpScreen(),
            //  home:const ChooseYourWeek(),
            //   home:const GovernorateScreen(),
            // home: const SelectToChangeScreen(),
            //  home: const ReplyDoneScreen(),
            // home: const CalenderScreen(),
            // home: const DetailsScreen(),
          );
        });
  }
}
