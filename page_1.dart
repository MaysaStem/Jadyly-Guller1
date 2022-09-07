import 'dart:ui';

import 'package:flutter/material.dart';

class TapExample extends StatefulWidget {
  const TapExample({Key? key}) : super(key: key);

  @override
  State<TapExample> createState() => _TapExampleState();
}

class _TapExampleState extends State<TapExample>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Kategoriyalar",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w800, color: Colors.red),
          ),
          backgroundColor: Colors.amber,
          bottom: TabBar(
            controller: tabController,
            tabs: [
              Tab(
                child: Text(
                  "Kategoriyalar",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Tab(
                child: Text(
                  "Guller",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: [
            Body_3(),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 4,
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(90),
                color: Colors.cyan,
              ),
              child: Center(
                  child: Text(
                "Yazgul",
                style: TextStyle(fontSize: 70, fontWeight: FontWeight.w700),
              )),
            ),
          ],
        ));
  }
}

class Expantiontile extends StatefulWidget {
  const Expantiontile({Key? key}) : super(key: key);

  @override
  State<Expantiontile> createState() => _ExpantiontileState();
}

class _ExpantiontileState extends State<Expantiontile> {
  List a = [
    "Arzanladysh we aksiya",
    "Oy we Bakja gulleri",
    "Dermanlyk guller",
    "Dekoratiw guller"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            return ExpansionTile(
              title: Text(
                a[index % 4],
              ),
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: 15,
                    top: 5,
                  ),
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 0.8,
                        color: index % 2 == 0 ? Colors.cyan : Colors.pink),
                    borderRadius: BorderRadius.circular(15),
                    color: index % 2 == 0 ? Colors.white70 : Colors.white60,
                  ),
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) => Text(
                      "gullllllll   " + (index + 1).toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic,
                          color: Colors.black),
                    ),
                  ),
                )
              ],
            );
          }),
    );
  }
}

class Body_3 extends StatefulWidget {
  const Body_3({Key? key}) : super(key: key);

  @override
  State<Body_3> createState() => _Body_3State();
}

class _Body_3State extends State<Body_3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 4,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        children: [
          Container(
            height: 85,
            width: 79,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.white),
            child: Column(
              children: [
                Image.asset("asset/Aliceara.jpg"),
                Text(
                  "Dekoratiw guller",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Container(
            height: 85,
            width: 79,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.white),
            child: Column(
              children: [
                Image.asset("asset/Kalanhoye.jpg"),
                Text(
                  "Dermanlyk guller",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Container(
            height: 85,
            width: 79,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.white),
            child: Column(
              children: [
                Image.asset("asset/Aliceara.jpg"),
                Text(
                  "Dekoratiw guller",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Container(
            height: 85,
            width: 79,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.white),
            child: Column(
              children: [
                Image.asset("asset/Aloe.jpg"),
                Text(
                  "Oy gulleri",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          BottomNavigationBar(
            unselectedItemColor: Colors.amber,
            selectedItemColor: Colors.red,
            landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
            backgroundColor: Colors.red,
            unselectedLabelStyle: TextStyle(color: Colors.amberAccent),
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.access_alarm), label: "Profile"),
              BottomNavigationBarItem(
                  backgroundColor: Colors.blue,
                  icon: Icon(Icons.access_alarm),
                  label: "Profile",
                  tooltip: "profile"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.access_alarm),
                  label: "Profile",
                  tooltip: "profile"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.access_alarm),
                  label: "Profile",
                  tooltip: "profile"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.access_alarm),
                  label: "Profile",
                  tooltip: "profile"),
            ],
          ),
        ],
      ),
    );
  }
}
