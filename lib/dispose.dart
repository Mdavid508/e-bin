import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import 'main.dart';

class Mydispose extends StatefulWidget {
  const Mydispose({Key? key}) : super(key: key);

  @override
  State<Mydispose> createState() => _MydisposeState();
}

String? value;
DropdownMenuItem<String> buildMenuItem(String item1) => DropdownMenuItem(
      value: item1,
      child: Text(
        item1,
        style: GoogleFonts.notoSans(fontSize: 22, fontWeight: FontWeight.w400),
      ),
    );

class _MydisposeState extends State<Mydispose> {
  final bgcolor = const Color(0xFF7ED957);
  String? value;
  final items1 = [
    'Desktop PCs',
    'Routers',
    'mice',
    'Keyboards',
    'Smart Phones'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgcolor,
        leading: Icon(Icons.menu),
        title: Text('Dispose'),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: 600,
        margin: EdgeInsets.only(
          left: 10,
          right: 10,
          top: 10,
        ),
        padding: EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        decoration: BoxDecoration(
            color: Color.fromRGBO(217, 217, 217, 100),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            // decoration: BoxDecoration(
            //     color: Colors.white, borderRadius: BorderRadius.circular(10)),
            Container(
              margin: EdgeInsets.only(
                left: 10,
                right: 10,
                top: 10,
              ),
              padding: EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 12,
              ),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: DropdownButton<String>(
                  iconSize: 36,
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  ),
                  hint: Text(
                    'Select Sub-category',
                    style: GoogleFonts.notoSans(
                        fontSize: 22, fontWeight: FontWeight.w400),
                  ),
                  isExpanded: true,
                  value: value,
                  items: items1.map(buildMenuItem).toList(),
                  onChanged: (value) => setState(
                        () => this.value = value,
                      )),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.only(top: 10),
                child: Image.asset('assets/camera add.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
