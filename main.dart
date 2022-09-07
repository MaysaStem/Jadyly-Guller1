import 'package:flutter/material.dart';
import 'Exam.dart';
import 'homePage.dart';
import 'pfofile_loged_in.dart';
import 'sebetim.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: BottomNavBar()),
    ),
  );
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int change = 0;
  List sahypa = [];
  @override
  void initState() {
    HomePage homePage = HomePage();
    Tabbar tabbar = Tabbar();
    Sebetim sebetim = Sebetim();
    LogedIn logedIn = LogedIn();
    sahypa = [homePage, tabbar, sebetim, logedIn];
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: sahypa[change],
      bottomNavigationBar: BottomNavigationBar(
        unselectedLabelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Colors.greenAccent,
        ),
        selectedLabelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                size: 30,
              ),
              label: "Bas sahypa"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.yard,
                size: 30,
              ),
              label: "Kategoriyalar"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.stroller,
                size: 30,
              ),
              label: "Sebet"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_box_outlined,
                size: 30,
              ),
              label: "Profil"),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: change,
        onTap: (sana) {
          setState(() {
            change = sana;
          });
        },
      ),
    );
  }
}
