import 'package:flutter/material.dart';
import 'package:project/pfofile_loged_in.dart';

class sargytlarym extends StatefulWidget {
  const sargytlarym({Key? key}) : super(key: key);

  @override
  State<sargytlarym> createState() => _sargytlarymState();
}

class _sargytlarymState extends State<sargytlarym> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  height: 50,
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 20, bottom: 15),
                  child: Row(
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
                      Text(
                        "Sargytlarym",
                        style: TextStyle(
                            fontSize: 20, color: Colors.green.shade600),
                      )
                    ],
                  ),
                ),
                Container(
                  //color: Colors.grey.shade500,
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey.shade300),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "ID",
                            style: TextStyle(
                                color: Colors.grey.shade700, fontSize: 13),
                          ),
                          Text("1125"),
                          Text(
                            "Jemi:",
                            style: TextStyle(
                                color: Colors.grey.shade700, fontSize: 13),
                          ),
                          Text(
                            "200 TMT",
                            style: TextStyle(color: Colors.green.shade800),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Sargyt taryhy",
                            style: TextStyle(
                                color: Colors.grey.shade700, fontSize: 13),
                          ),
                          Text("5.09.2022"),
                          Text(
                            "Sargyt yagdayy",
                            style: TextStyle(
                                color: Colors.grey.shade700, fontSize: 13),
                          ),
                          Text(
                            "Goybolsun edildi",
                            style: TextStyle(color: Colors.red.shade900),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Haryt sany",
                            style: TextStyle(
                                color: Colors.grey.shade700, fontSize: 13),
                          ),
                          Text("5"),
                          Text("  "),
                          Text("  ")
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 20,
                  //indent: 100,
                  endIndent: double.infinity,
                ),
                Container(
                  //color: Colors.grey.shade500,
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey.shade300),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "ID",
                            style: TextStyle(
                                color: Colors.grey.shade700, fontSize: 13),
                          ),
                          Text("1125"),
                          Text(
                            "Jemi:",
                            style: TextStyle(
                                color: Colors.grey.shade700, fontSize: 13),
                          ),
                          Text(
                            "80 TMT",
                            style: TextStyle(color: Colors.green.shade800),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Sargyt taryhy",
                            style: TextStyle(
                                color: Colors.grey.shade700, fontSize: 13),
                          ),
                          Text("6.09.2022"),
                          Text(
                            "Sargyt yagdayy",
                            style: TextStyle(
                                color: Colors.grey.shade700, fontSize: 13),
                          ),
                          Text(
                            "Goybolsun edildi",
                            style: TextStyle(color: Colors.red.shade900),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Haryt sany",
                            style: TextStyle(
                                color: Colors.grey.shade700, fontSize: 13),
                          ),
                          Text("2"),
                          Text("  "),
                          Text("  ")
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
