import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Exam.dart';
import 'arzanladys.dart';
import 'main.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int a = 1;
  bool b = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
        elevation: 0,
        title: Text(
          "Jadyly Guller",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(left: 5, right: 5),
        child: ListView(
          children: [
            TextField(
              showCursor: true,
              decoration: InputDecoration(
                hintText: "Oz gulini tap",
                suffixIcon: Icon(
                  Icons.search,
                  color: Color.fromRGBO(104, 109, 118, 1),
                ),
                hintStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(104, 109, 118, 1),
                ),
                filled: true,
                fillColor: Color.fromRGBO(230, 230, 230, 1),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
              ),
            ),
            Container(
              height: 190,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 16, bottom: 16),
              child: PageView(
                children: [
                  Image.asset('asset/Aliceara.jpg', fit: BoxFit.cover),
                  Image.asset(
                    "asset/Aliceara.jpg",
                    fit: BoxFit.fill,
                  ),
                  Image.asset(
                    "asset/Aliceara.jpg",
                    fit: BoxFit.fill,
                  ),
                  Image.asset(
                    "asset/Aliceara.jpg",
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Body_1(),
                        ),
                      );
                    });
                  },
                  child: Container(
                    height: 45,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color.fromRGBO(230, 230, 230, 1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.yard,
                          size: 22,
                          color: Color.fromRGBO(104, 109, 118, 1),
                        ),
                        Text(
                          "Kategoriyalar",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(104, 109, 118, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Body_2(),
                        ),
                      );
                    });
                  },
                  child: Container(
                    height: 45,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color.fromRGBO(230, 230, 230, 1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.warehouse,
                          size: 22,
                          color: Color.fromRGBO(104, 109, 118, 1),
                        ),
                        Text(
                          "Saylananlar",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(104, 109, 118, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 16, bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Arzanladys(),
                          ),
                        );
                      });
                    },
                    child: Text(
                      "Aksiyada",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.red.shade400,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      InkWell(
                          onTap: () {
                            setState(() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Arzanladys(),
                                ),
                              );
                            });
                          },
                          child: Text(
                            "Ahlisini gör",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.red.shade400,
                            ),
                          )),
                      Icon(
                        Icons.arrow_forward,
                        size: 22,
                        color: Colors.red.shade400,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 184,
                  height: 256,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        "asset/Kalanhoye.jpg",
                        width: 168,
                        height: 168,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 2, left: 0, right: 55),
                        child: Text(
                          "Kalanhoye guli",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(55, 58, 64, 1)),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 12, left: 7),
                            child: Text(
                              "40 manat",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(255, 0, 0, 1)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12, left: 10),
                            child: Text(
                              "60 manat",
                              style: TextStyle(
                                  fontSize: 9,
                                  color: Color.fromRGBO(104, 109, 118, 1),
                                  decoration: TextDecoration.lineThrough),
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          setState(
                            () {
                              b = true;
                            },
                          );
                        },
                        child: Container(
                          height: 30,
                          width: 155,
                          margin: EdgeInsets.only(top: 7),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color.fromRGBO(255, 255, 255, 1),
                              border:
                                  Border.all(width: 0.5, color: Colors.grey)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.stroller,
                                size: 20,
                                color: Color.fromRGBO(255, 0, 0, 1),
                              ),
                              Text(
                                "Oz kolleksiyana goş",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(255, 0, 0, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 184,
                  height: 256,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        "asset/Aloe.jpg",
                        width: 168,
                        height: 168,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 2, left: 0, right: 55),
                        child: Text(
                          "Aloe guli",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(55, 58, 64, 1)),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 12, left: 7),
                            child: Text(
                              "45 manat",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(255, 0, 0, 1)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12, left: 10),
                            child: Text(
                              "60 manat",
                              style: TextStyle(
                                  fontSize: 9,
                                  color: Color.fromRGBO(104, 109, 118, 1),
                                  decoration: TextDecoration.lineThrough),
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          setState(
                            () {
                              b = true;
                            },
                          );
                        },
                        child: Container(
                          height: 30,
                          width: 155,
                          margin: EdgeInsets.only(top: 7),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color.fromRGBO(255, 255, 255, 1),
                              border:
                                  Border.all(width: 0.5, color: Colors.grey)),
                          child: b == false
                              ? Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.stroller,
                                      size: 20,
                                      color: Color.fromRGBO(255, 0, 0, 1),
                                    ),
                                    Text(
                                      "Oz kolleksiyana goş",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(255, 0, 0, 1),
                                      ),
                                    ),
                                  ],
                                )
                              : Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                        onTap: a > 0
                                            ? () {
                                                setState(() {
                                                  a--;
                                                });
                                              }
                                            : null,
                                        child: Icon(Icons.remove, size: 30)),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, right: 15),
                                      child: Text(
                                        a.toString() + "  sany",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: Color.fromRGBO(68, 68, 68, 1),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                        onTap: a < 10
                                            ? () {
                                                setState(() {
                                                  a++;
                                                });
                                              }
                                            : null,
                                        child: Icon(Icons.add, size: 30)),
                                  ],
                                ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
