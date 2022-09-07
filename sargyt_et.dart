// import 'dart:html';

import 'package:flutter/material.dart';

class sargyt extends StatefulWidget {
  const sargyt({Key? key}) : super(key: key);

  @override
  State<sargyt> createState() => _sargytState();
}

class _sargytState extends State<sargyt> {
  bool checkbox1 = false;
  String toleg = "tol";
  String wagt = "wag";
  String wat = "w";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.65,
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 10),
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Sargyt et",
                        style: TextStyle(fontSize: 17),
                      ),
                      height: 50,
                      width: double.infinity,
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      margin: EdgeInsets.only(bottom: 20),
                      child: Text(
                        "Toleg sekili",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    RadioListTile(
                      value: "nagt",
                      groupValue: toleg,
                      onChanged: (cek) {
                        setState(() {
                          toleg = cek!.toString();
                          debugPrint("toleg : $toleg");
                        });
                      },
                      title: Text("nagt"),
                    ),
                    RadioListTile(
                      value: "Toleg terminaly",
                      groupValue: toleg,
                      onChanged: (cek) {
                        setState(() {
                          toleg = cek!.toString();
                          debugPrint("toleg : $toleg");
                        });
                      },
                      title: Text("Toleg terminaly"),
                    ),
                    RadioListTile(
                      value: "Online toleg(yakynada)",
                      groupValue: toleg,
                      onChanged: (cek) {
                        setState(() {
                          toleg = cek!.toString();
                          debugPrint("toleg : $toleg");
                        });
                      },
                      title: Text("Online toleg(yakynada)"),
                    ),
                    CheckboxListTile(
                        value: checkbox1,
                        title: Text("Ozum baryp aljak"),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (check) {
                          setState(() {
                            checkbox1 = check!;
                          });
                        }),
                    Container(
                      height: 50,
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text("Eltip berme wagtyny saylan",
                          style: TextStyle(
                            fontSize: 20,
                          )),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 35,
                          width: 80,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color.fromRGBO(230, 230, 230, 1),
                          ),
                          child: Text(
                            "Su gun",
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          height: 35,
                          width: 80,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color.fromRGBO(230, 230, 230, 1),
                          ),
                          child: Text(
                            "Ertir",
                          ),
                        ),
                        // RadioListTile(
                        //   value: "13:00-21:00",
                        //   groupValue: wat,
                        //   onChanged: (cekk) {
                        //     setState(() {
                        //       wat = cekk!.toString();
                        //       debugPrint("wat : $cekk");
                        //     });
                        //   },
                        //   title: Text("nagt"),
                        // ),
                      ],
                    ),
                    // RadioListTile(
                    //   value: "sugun",
                    //   groupValue: wagt,
                    //   onChanged: (ceck) {
                    //     setState(() {
                    //       wagt = ceck!.toString();
                    //     });
                    //   },
                    //   title: Text("Sugun"),
                    //   // shape: RoundedRectangleBorder(
                    //   //     borderRadius: BorderRadius.circular(10)),
                    // ),
                    // Radio(
                    //   focusColor: Colors.white,
                    //   groupValue: _selection,
                    //   onChanged: (select) {
                    //     setState(() {
                    //       _selection = select;
                    //     });
                    //   },
                    //   value: 2,
                    // ),
                    // Text(
                    //   "12:00 - 13:00",
                    //   style: TextStyle(fontWeight: FontWeight.bold),
                    // ),

                    SizedBox(
                      height: 20,
                      child: Text("Doly adynyz"),
                    ),
                    TextField(
                      keyboardType: TextInputType.name,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(230, 230, 230, 1),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                BorderSide(width: 0, style: BorderStyle.none)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                      child: Text("Salgynyz"),
                    ),
                    TextField(
                      keyboardType: TextInputType.streetAddress,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(230, 230, 230, 1),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                BorderSide(width: 0, style: BorderStyle.none)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                      child: Text("Telefon belginiz:"),
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(230, 230, 230, 1),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                BorderSide(width: 0, style: BorderStyle.none)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                      child: Text("Bellik"),
                    ),

                    TextField(
                      keyboardType: TextInputType.text,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(230, 230, 230, 1),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                BorderSide(width: 0, style: BorderStyle.none)),
                      ),
                    ),
                    Container(
                      height: 100, //double.maxFinite,
                      width: double.infinity,
                      child: Text(
                          "-  Sargydy barlap alanyňyzdan soňra töleg amala aşyrylýar. Eltip berijiniň size gowşurýan töleg resminamasynda siziň tölemeli puluňyz bellenendir. Töleg nagt we nagt däl görnüşde milli manatda amala aşyrylýar."),
                    ),
                    Container(
                      height: 199,
                      width: double.infinity,
                      child: Text(
                          "-  Sargydy barlap alanyňyzdan soňra töleg amala aşyrylýar. Eltip berijiniň size gowşurýan töleg resminamasynda siziň tölemeli puluňyz bellenendir."),
                    )
                  ],
                ),
              ],
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
                  "100 manat",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromRGBO(255, 0, 0, 1),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  width: MediaQuery.of(context).size.width,
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.shopping_cart_outlined,
                        size: 18,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      Text(
                        "Sargyt et",
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
