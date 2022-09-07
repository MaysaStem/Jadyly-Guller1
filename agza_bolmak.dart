import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool checkbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            Container(
              height: 50,
              width: double.infinity,
              margin: EdgeInsets.only(top: 20, bottom: 15),
              child: Row(
                children: [
                  Icon(Icons.arrow_back),
                  Text(
                    "Agza bolmak",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            Text(
              "Agza bolmak",
              style: TextStyle(fontSize: 35),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18, bottom: 8),
              child: SizedBox(
                height: 20,
                child: Text(
                  "Doly adynyz",
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            TextField(
              keyboardType: TextInputType.name,
              cursorColor: Colors.black,
              //  minLines: 6,
              decoration: InputDecoration(
                //floatingLabelBehavior: FloatingLabelBehavior.always,
                filled: true,
                fillColor: Color.fromRGBO(230, 230, 230, 1),
                // disabledBorder: InputBorder.none,

                //labelText: "Doly adynyz ",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 0, style: BorderStyle.none)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              child: SizedBox(
                height: 20,
                child: Text(
                  "Telefon",
                ),
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              cursorColor: Colors.black,
              maxLength: 7,
              decoration: InputDecoration(
                //floatingLabelBehavior: FloatingLabelBehavior.always,
                filled: true,
                fillColor: Color.fromRGBO(230, 230, 230, 1),
                prefix: Text("+9936"),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(width: 0, style: BorderStyle.none)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              child: SizedBox(
                height: 20,
                child: Text("Acar sozi"),
              ),
            ),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              cursorColor: Colors.black,
              maxLength: 12,
              obscureText: true,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                //floatingLabelBehavior: FloatingLabelBehavior.always,
                filled: true,
                fillColor: Color.fromRGBO(230, 230, 230, 1),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(width: 0, style: BorderStyle.none)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              child: SizedBox(
                height: 20,
                child: Text("Acar sozini tassyklan"),
              ),
            ),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              cursorColor: Colors.black,
              maxLength: 12,
              obscureText: true,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                //floatingLabelBehavior: FloatingLabelBehavior.always,
                filled: true,
                fillColor: Color.fromRGBO(230, 230, 230, 1),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(width: 0, style: BorderStyle.none)),
              ),
              //cursorColor: Colors.grey,
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
            SizedBox(
              height: 15,
            ),
            RaisedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.person_add_alt_1_outlined),
              label: Text("Agza bolun"),
              color: Colors.red.shade600,
            ),
          ],
        ),
      ),
    );
  }
}
