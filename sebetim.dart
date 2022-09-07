import 'package:flutter/material.dart';
import 'package:project/sargyt_et.dart';

class Sebetim extends StatefulWidget {
  const Sebetim({Key? key}) : super(key: key);

  @override
  State<Sebetim> createState() => _SebetimState();
}

class _SebetimState extends State<Sebetim> {
  int a = 1;
  bool b = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        elevation: 0,
        toolbarHeight: 70,
        title: Text(
          "Sebedim -guller",
          style: TextStyle(
            fontSize: 14,
            color: Color.fromRGBO(55, 58, 64, 1),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.60,
            child: ListView.builder(
              itemCount: 6,
              padding: EdgeInsets.only(left: 16, right: 16),
              itemBuilder: (context, index) {
                return Card(
                  child: Row(
                    children: [
                      Container(
                        width: 130,
                        height: 170,
                        padding: EdgeInsets.only(left: 16),
                        child: Column(
                          children: [
                            Image.asset("asset/Kalanhoye.jpg"),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                    onTap: a > 0
                                        ? () {
                                            setState(() {
                                              a -= 1;
                                            });
                                          }
                                        : null,
                                    child: Container(
                                      width: 32,
                                      height: 30,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                          width: 0.5,
                                          color: Color.fromRGBO(7, 26, 82, 0.2),
                                        ),
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                      ),
                                      child: Text(
                                        "-",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromRGBO(255, 0, 0, 1),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 32,
                                    height: 30,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      border: Border.all(
                                        width: 0.5,
                                        color: Color.fromRGBO(7, 26, 82, 0.2),
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Text(
                                      a.toString(),
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Color.fromRGBO(104, 109, 118, 1),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: a < 10
                                        ? () {
                                            setState(() {
                                              a += 1;
                                            });
                                          }
                                        : null,
                                    child: Container(
                                      width: 32,
                                      height: 30,
                                      alignment: Alignment.center,
                                      child: Text(
                                        "+",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromRGBO(255, 0, 0, 1),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        border: Border.all(
                                          width: 0.5,
                                          color: Color.fromRGBO(7, 26, 82, 0.2),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 205,
                        height: 170,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Kalanhoye",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(55, 58, 64, 1),
                              ),
                            ),
                            Text(
                              "Kalanhoye kop yyllyk gulleyan guldir.",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(55, 58, 64, 1),
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "40 manat",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(255, 0, 0, 1),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            height: MediaQuery.of(context).size.height * 0.15,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Jemi",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromRGBO(104, 109, 118, 1),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "80 manat",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromRGBO(255, 0, 0, 1),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      b = true;
                    });
                  },
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => sargyt(),
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 16, right: 16),
                      width: MediaQuery.of(context).size.width,
                      height: 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.shopping_cart_outlined,
                            size: 18,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                          Text(
                            "Oz kolleksiyana gos",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromRGBO(255, 0, 0, 1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
