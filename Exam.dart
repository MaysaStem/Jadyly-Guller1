import 'package:flutter/material.dart';
import 'package:project/page_1.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({Key? key}) : super(key: key);

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        title: Text(
          "Jadyly guller",
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w900,
              color: Colors.green.shade600),
        ),
        bottom: TabBar(
          controller: tabController,
          tabs: [
            Text(
              "Kategoriyalar",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            Text(
              "Sortlar",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          Body_1(),
          Body_2(),
        ],
      ),
    );
  }
}

class Body_1 extends StatefulWidget {
  const Body_1({Key? key}) : super(key: key);

  @override
  State<Body_1> createState() => _Body_1State();
}

class _Body_1State extends State<Body_1> {
  List a = ["Dekoratiw guller", "Dermanlyk guller", "Bakja gulleri"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: ((context, index) {
          return Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 8, left: 15, right: 15),
            padding: EdgeInsets.only(left: 20),
            width: 300,
            height: 50,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(blurRadius: 5, color: Colors.grey.shade300),
            ], color: Colors.white, borderRadius: BorderRadius.circular(5)),
            child: Text(a[index],
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.green.shade500)),
          );
        }),
      ),
    );
  }
}

class Body_2 extends StatefulWidget {
  const Body_2({Key? key}) : super(key: key);

  @override
  State<Body_2> createState() => _Body_2State();
}

class _Body_2State extends State<Body_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 8,
      mainAxisSpacing: 2,
      children: [
        Container(
          height: 85,
          width: 79,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.white),
          child: Column(
            children: [
              Image.asset("asset/Aloe.jpg"),
              Text(
                "Aloe guli",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
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
                "Aloe guli",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
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
                "Aloe guli",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
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
                "Aloe guli",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
