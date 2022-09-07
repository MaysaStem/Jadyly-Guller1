import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project/pfofile_loged_in.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  int max = 3;
  bool a = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 13, right: 13, top: 49),
        child: ListView(
          children: [
            Row(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LogedIn(),
                        ),
                      );
                    },
                    child: Icon(Icons.arrow_back)),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    "Iceri girmek",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32, bottom: 32),
              child: Text(
                "Habarlasmak",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
              ),
            ),
            Text("Adynyz",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(
                    55,
                    58,
                    64,
                    1,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 15),
              child: TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(230, 230, 230, 1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    )),
              ),
            ),
            Text(
              "Telefon ya-da E-mail",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(55, 58, 64, 1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 15),
              child: TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(230, 230, 230, 1),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                ),
              ),
            ),
            Text(
              "Hatynyz",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(
                  58,
                  58,
                  64,
                  1,
                ),
              ),
            ),
            Container(
              width: max * 25,
              padding: EdgeInsets.only(top: 10, bottom: 15),
              child: TextField(
                cursorColor: Colors.black,
                maxLines: max,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(230, 230, 230, 1),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
                onTap: () {
                  setState(() {
                    a = true;
                  });
                },
                child: Container(
                  height: 54,
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    a == false ? "Ugrat" : "Ugradyldy",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: a == false
                          ? Color.fromRGBO(255, 0, 0, 1)
                          : Colors.grey),
                )),
            Container(
              height: 90,
              width: 195,
              padding: EdgeInsets.only(top: 10, right: 125, bottom: 10),
              margin: EdgeInsets.only(top: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Email:",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(55, 58, 64, 1),
                        ),
                      ),
                      Text(
                        "JadylyGuller@gmail.com",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(55, 58, 64, 1),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Telefon:",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(55, 58, 64, 1),
                        ),
                      ),
                      Text(
                        "+993 65656565",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(55, 58, 64, 1),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
