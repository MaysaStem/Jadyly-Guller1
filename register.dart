import 'package:flutter/material.dart';
import 'package:project/pfofile_loged_in.dart';

class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  bool checkbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(0),
            width: double.infinity,
            height: 50,
            alignment: Alignment.centerLeft,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 20),
                  child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LogedIn(),
                          ),
                        );
                      },
                      child: Icon(Icons.arrow_back)),
                ),
                const Text("Agza bolmak"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 10, top: 10),
            child: const Text(
              "Agza bolmak",
              style: const TextStyle(fontSize: 30),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: SizedBox(
              height: 18,
              child: const Text("Doly adynyz"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                //labelText: "Doly adynyz ",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: const SizedBox(
              height: 18,
              child: Text("Telefon"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: const SizedBox(
              height: 18,
              child: Text("Acar sozi"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: const SizedBox(
              height: 18,
              child: Text("Acar sozini tassyklan"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              //cursorColor: Colors.grey,
            ),
          ),
          CheckboxListTile(
              //checkbox
              value: checkbox,
              controlAffinity: ListTileControlAffinity.leading,
              //selected: TextAlign.left,
              title: const Text(
                  "Ulanyş Düzgünlerini we Gizlinlik Şertnamasyny okadym we kabul edýärin"),
              activeColor: Colors.blue,
              onChanged: (check) {
                setState(() {
                  checkbox = check!;
                });
              }),
        ],
      ),
    );
  }
}   

// home: Scaffold(
//       body: ListView(
//         children: [
//           Container(
//             margin: EdgeInsets.all(10),
//             width: double.infinity,
//             height: 50,
//             child: Align(
//               alignment: Alignment.center,
//               child: CircleAvatar(
//                 radius: 40,
//                 backgroundColor: Colors.grey.shade500,
//                 child: Icon(
//                   Icons.person_outline_rounded,
//                   color: Colors.black12,
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: TextField(
//               keyboardType: TextInputType.name,
//               decoration: InputDecoration(
//                 floatingLabelBehavior: FloatingLabelBehavior.always,
//                 labelText: "Adynyz we familyanyz",
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: TextField(
//               keyboardType: TextInputType.emailAddress,
//               decoration: InputDecoration(
//                 floatingLabelBehavior: FloatingLabelBehavior.always,
//                 labelText: "Login",
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: TextField(
//               keyboardType: TextInputType.number,
//               maxLength: 6,
//               decoration: InputDecoration(
//                 floatingLabelBehavior: FloatingLabelBehavior.always,

//                 labelText: "Telefon belginiz",
//                 prefixText: "+993",

//                 //floatingLabelAlignment: FloatingLabelAlignment.center,
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: TextField(
//               keyboardType: TextInputType.visiblePassword,
//               maxLength: 12,
//               obscureText: true,
//               obscuringCharacter: "*",
//               decoration: InputDecoration(
//                 floatingLabelBehavior: FloatingLabelBehavior.always,
//                 labelText: "Acar soziniz",
//                 suffixIcon: InkWell(child: Icon(Icons.remove_red_eye_outlined)),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: TextField(
//               keyboardType: TextInputType.visiblePassword,
//               maxLength: 12,
//               obscureText: true,
//               obscuringCharacter: "*",
//               decoration: InputDecoration(
//                 floatingLabelBehavior: FloatingLabelBehavior.always,
//                 labelText: "Acar sozinizi tassyklan",
//                 suffixIcon: Icon(Icons.remove_red_eye_outlined),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           RaisedButton.icon(
//             onPressed: () {},
//             icon: Icon(Icons.person_add_alt_1_outlined),
//             label: Text("Agza bolun"),
//             color: Colors.red.shade600,
//           ), 

//           // Padding(
//           //   padding: const EdgeInsets.all(10),
//           //   child: Container(
//           //       margin: EdgeInsets.all(10),
//           //       width: double.infinity,
//           //       height: 50,
//           //       child: Align(
//           //         // alignment: Alignment.center,
//           //         child: Text("Agza bolun"),
//           //       ),
//           //       decoration: BoxDecoration(
//           //           borderRadius: BorderRadius.circular(10),
//           //           color: Colors.red)),
//           // ),
//         ],
//       ),
//     ),
//   ));
// }
