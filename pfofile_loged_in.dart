import 'package:flutter/material.dart';
import 'package:project/register.dart';
import 'package:project/sargytlarym.dart';

import 'Page3.dart';

class LogedIn extends StatefulWidget {
  const LogedIn({Key? key}) : super(key: key);

  @override
  State<LogedIn> createState() => _LogedInState();
}

class _LogedInState extends State<LogedIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                child: Text(
                  "Jadyly Guller",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w900,
                      color: Colors.green.shade600),
                ),
                padding: EdgeInsets.only(left: 16, top: 40, bottom: 20),
                alignment: Alignment.bottomLeft,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => register(),
                      ),
                    );
                  });
                },
                child: Container(
                  child: Card(
                    color: Colors.white,
                    margin: EdgeInsets.all(16),
                    elevation: 15,
                    child: ListTile(
                      title: Text("Agza bolmak"),
                      leading: Icon(Icons.person),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => sargytlarym(),
                    ),
                  );
                },
                child: Container(
                  child: Card(
                    color: Colors.white,
                    margin: EdgeInsets.all(16),
                    elevation: 15,
                    child: ListTile(
                      title: Text("Sargytlarym"),
                      leading: Icon(Icons.stroller),
                    ),
                  ),
                ),
              ),
              // Container(
              //   child: Card(
              //     color: Colors.white,
              //     margin: EdgeInsets.all(16),
              //     elevation: 15,
              //     child: ListTile(
              //       title: Text("Dil calysmak"),
              //       leading: Icon(Icons.language_outlined),
              //     ),
              //   ),
              // ),
              // Container(
              //   child: Card(
              //     color: Colors.white,
              //     margin: EdgeInsets.all(16),
              //     elevation: 15,
              //     child: ListTile(
              //       title: Text("Eltip bermek we toleg"),
              //       leading: Icon(Icons.delivery_dining),
              //     ),
              //   ),
              // ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page3(),
                    ),
                  );
                },
                child: Container(
                  child: Card(
                    color: Colors.white,
                    margin: EdgeInsets.all(16),
                    elevation: 15,
                    child: ListTile(
                      title: Text("Habarlasmak"),
                      leading: Icon(Icons.mail_rounded),
                    ),
                  ),
                ),
              ),
              // InkWell(
              //   onTap: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => Page3(),
              //       ),
              //     );
              //   },
              //   child: Container(
              //     child: Card(
              //       color: Colors.white,
              //       margin: EdgeInsets.all(16),
              //       elevation: 15,
              //       child: ListTile(
              //         title: Text("Biz barada"),
              //         leading: Icon(Icons.help),
              //       ),
              //  ),
              // ),
              //),
            ],
          )
        ],
      ),
    );
  }
}

// class logedIn extends StatefulWidget {
//   const logedIn({Key? key}) : super(key: key);

//   @override
//   State<logedIn> createState() => _logedInState();
// }

// class _logedInState extends State<logedIn> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Card(
//         color: Colors.white,
//         margin: EdgeInsets.all(16),
//         elevation: 20,
//         child: ListView.builder(
//             itemBuilder: (context, index) => Card(
//                   child: ListTile(
//                     title: Text("hasap"),
//                   ),
//                 )),
//       ),
//     );
//   }
// }

// class logedIn extends StatefulWidget {
//   const logedIn({Key? key}) : super(key: key);

//   @override
//   State<logedIn> createState() => _logedInState();
// }

// class _logedInState extends State<logedIn> {
//   List iconlar = [
//     Icon(Icons.person),
//     // Icons.shopping_basket,
//     // Icons.language_outlined,
//     // Icons.delivery_dining,
//     // Icons.mail_rounded,
//     // Icons.help,
//   ];
//   List text = List.generate(6, generator)
//     //Text("Hasabym")
//     // "Sargytlarym",
//     // "Dil calysmak",
//     // "Eltip bermek we toleg",
//     // "Habarlasmak",
//     // "Biz barada",
//   ;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Card(
//         color: Colors.white10,
//         margin: EdgeInsets.all(16),
//         child: ListView.separated(
//             itemBuilder: ((context, index) => Card(
//                   child: ListTile(
//                     title: text[index],
//                     leading: iconlar[index],
//                   ),
//                 )),
//             separatorBuilder: (context, index) => const Divider(),
//             itemCount: iconlar.length),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class LogedIn extends StatefulWidget {
//   const LogedIn({Key? key}) : super(key: key);

//   @override
//   State<LogedIn> createState() => _LogedInState();
// }

// class _LogedInState extends State<LogedIn> {
//   late String _name, _number;
//   final keyselect = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//         key: keyselect,
//         autovalidateMode: AutovalidateMode.always,
//         child: Column(
//           children: [
//             Text("Name"),
//             TextFormField(
//               validator: (value) {
//                 if (value!.length < 6) {
//                   return "6 kan harp giriz";
//                 } else {
//                   return null;
//                 }
//               },
//               decoration: InputDecoration(
//                   errorStyle: TextStyle(fontSize: 100),
//                   errorBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(100)),
//                   border: OutlineInputBorder()),
//               onSaved: (value) {
//                 _name = value!;
//               },
//             ),
//             Text("number"),
//             TextFormField(
//               keyboardType: TextInputType.number,
//               validator: (value) {
//                 if (value!.length < 6) {
//                   return "6 kan harp giriz";
//                 } else if (!value.startsWith("6")) {
//                   return "6 basla";
//                 } else {
//                   return null;
//                 }
//               },
//               onSaved: (value) {
//                 _number = value!;
//               },
//               decoration: InputDecoration(border: OutlineInputBorder()),
//             ),
//             Theme(
//                 data: Theme.of(context).copyWith(errorColor: Colors.amber),
//                 child: Column(
//                   children: [],
//                 )),
//             RaisedButton(onPressed: () {
//               girisMethod();
//             })
//           ],
//         ));
//   }

//   void girisMethod() {
//     if (keyselect.currentState!.validate()) {
//       keyselect.currentState!.save();
//       debugPrint("senin adyn $_name senin number $_number");
//     }
//   }
// }
