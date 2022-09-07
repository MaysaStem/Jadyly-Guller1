import 'package:flutter/material.dart';
import 'package:project/sebetim.dart';

import 'arzanladys.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  int a = 0;
  bool b = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 30),
        child: ListView(
          children: [
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
                    child: Icon(
                      Icons.arrow_back,
                      color: Color.fromRGBO(55, 58, 64, 1),
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    "Kalanhoye dekoratiw we dermanlyk guli",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromRGBO(55, 58, 64, 1),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 26, bottom: 20),
              height: 340,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "asset/Kalanhoye.jpg",
                fit: BoxFit.fill,
              ),
            ),
            Text(
              "Kalanhoye",
              style: TextStyle(
                fontSize: 16,
                color: Color.fromRGBO(104, 109, 118, 1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 30),
              child: Text(
                "Kalanhoye dekoratiw we dermanlyk guli",
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromRGBO(55, 58, 64, 1),
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  "40 manat",
                  style: TextStyle(
                      fontSize: 24, color: Color.fromRGBO(255, 0, 0, 1)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18, top: 5),
                  child: Text(
                    "60 manat",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(104, 109, 118, 1),
                        decoration: TextDecoration.lineThrough),
                  ),
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.11,
              padding: EdgeInsets.only(top: 30, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                      width: MediaQuery.of(context).size.width * 0.15,
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
                          fontSize: 16,
                          color: Color.fromRGBO(255, 0, 0, 1),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.62,
                    height: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      border: Border.all(
                        width: 0.5,
                        color: Color.fromRGBO(7, 26, 82, 0.2),
                      ),
                    ),
                    child: Text(
                      a.toString(),
                      style: TextStyle(
                        fontSize: 16,
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
                      width: MediaQuery.of(context).size.width * 0.15,
                      height: 30,
                      alignment: Alignment.center,
                      child: Text(
                        "+",
                        style: TextStyle(
                          fontSize: 16,
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
                      builder: (context) => Sebetim(),
                    ),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.stroller,
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
    );
  }
}
