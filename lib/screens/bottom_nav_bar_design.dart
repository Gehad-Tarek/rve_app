import 'package:flutter/material.dart';
import 'exchange_screen/exchange_screen.dart';
import 'menu_screen/menu_screen.dart';
import 'search_screen/search_screen.dart';
import '../constants/constants.dart';
import 'contact_us_screen/contact_us_screen.dart';
import 'home_screen/home_screen.dart';

class BottomNavBarDesign extends StatefulWidget {
  const BottomNavBarDesign({super.key});

  @override
  State<BottomNavBarDesign> createState() => _BottomNavBarDesignState();
}

class _BottomNavBarDesignState extends State<BottomNavBarDesign> {
  int bottomSelectedIndex = 0;

  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return [
      const BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
          size: 30,
        ),
        label: "Home",
      ),
      const BottomNavigationBarItem(
        icon: Icon(
          Icons.search,
          size: 30,
        ),
        label: "Search",
      ),
      const BottomNavigationBarItem(
        icon: Icon(
          Icons.handshake_rounded,
          size: 30,
        ),
        label: "Exchange",
      ),
      const BottomNavigationBarItem(
        icon: Icon(
          Icons.wifi_calling_3,
          size: 30,
        ),
        label: "Contact Us",
      ),
      const BottomNavigationBarItem(
        icon: Icon(
          Icons.menu,
          size: 30
        ),
        label: "Menu",
      ),
    ];
  }

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  Widget buildPageView() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[
        HomeScreen(),
        SearchScreen(),
        ExchangeScreen(),
        ContactUsScreen(),
        MenuScreen()
      ],
    );
  }

  @override
  void initState() {
    super.initState();
  }

  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index,
          curve: Curves.ease, duration: const Duration(milliseconds: 10));
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Constants.kMaintBlueColor,
        body: buildPageView(),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Constants.kGreyColor,
                blurRadius: 5,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            child: BottomNavigationBar(
              elevation: 20,
              // backgroundColor: Colors.red,
              backgroundColor: Constants.kWhiteBackground,
              showSelectedLabels: true,
              // selectedLabelStyle: TextStyle(fontSize: 16, color: Colors.red),
              selectedItemColor: Constants.kBlueColor,
              unselectedItemColor: Constants.kDarkGreyColor,
              // selectedItemColor: Constants.kMaintGreenColor,
              // unselectedItemColor: Constants.kMaintGreenColor,
              showUnselectedLabels: true,
              type: BottomNavigationBarType.fixed,
              currentIndex: bottomSelectedIndex,
              onTap: (index) {
                bottomTapped(index);
              },
              items: buildBottomNavBarItems(),
            ),
          ),
        ));
  }
}
