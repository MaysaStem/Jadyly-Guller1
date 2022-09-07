import 'package:flutter/material.dart';
import 'package:project/product.dart';

import 'homePage.dart';

class Arzanladys extends StatefulWidget {
  const Arzanladys({Key? key}) : super(key: key);

  @override
  State<Arzanladys> createState() => _ArzanladysState();
}

class _ArzanladysState extends State<Arzanladys> {
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Color.fromRGBO(55, 58, 64, 1),
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    "Aksiyalar",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.red.shade400,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.76,
              child: GridView.builder(
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.60,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Product(),
                          ),
                        );
                      });
                    },
                    child: Container(
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
                            padding: const EdgeInsets.only(
                                top: 2, left: 0, right: 55),
                            child: Text(
                              "Kalanhoye",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(55, 58, 64, 1)),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 12, left: 7),
                                child: Text(
                                  "40 manat",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(255, 0, 0, 1)),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 12, left: 10),
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
                          Container(
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
                                    color: Colors.red.shade400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
