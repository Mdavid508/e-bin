import 'package:e_bin/dispose.dart';
import 'package:e_bin/main.dart';
import 'package:e_bin/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mydisposepage extends StatefulWidget {
  // const Mydisposepage({Key? key}) : super(key: key);

  @override
  State<Mydisposepage> createState() => _MydisposepageState();
}

class _MydisposepageState extends State<Mydisposepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: bgcolor,
          leading: Icon(Icons.menu),
          centerTitle: true,
          title: Text('categories'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              smallIt(),
              smallEquipments(),
              screenMonitors(),
              LargeEquipments(),
            ],
          ),
        ));
  }
}

// class MyDisposepage extends StatefulWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           leading: Icon(Icons.menu),
//           centerTitle: true,
//           title: Text('categories'),
//         ),
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               smallIt(),
//               smallEquipments(),
//               screenMonitors(),
//               LargeEquipments(),
//             ],
//           ),
//         ));
//   }
// }

class smallIt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Mydispose()));
          },
          child: Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(217, 217, 217, 100),
                borderRadius: BorderRadius.circular(12)),
            padding: EdgeInsets.all(5.0),
            margin: EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
            ),
            width: MediaQuery.of(context).size.width,
            height: 190,
            child: Column(children: <Widget>[
              Container(
                width: 85.0,
                height: 85.0,
                // color: Colors.green,
                child: Image.asset('assets/small it.png'),
              ),
              Text('Small It',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.notoSans(
                      fontSize: 24, fontWeight: FontWeight.w600)),
              Text('Desktop PCs, Routers,mice, Keyboards, Smart Phones',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.notoSans(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(126, 217, 87, 100)))
            ]),
          ),
        ),
      ],
    );
  }
}

class smallEquipments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Mydispose()));
          },
          child: Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(217, 217, 217, 100),
                borderRadius: BorderRadius.circular(12)),
            child: Column(
              children: [
                Container(
                  width: 85.0,
                  height: 85.0,
                  // color: Colors.green,
                  child: Image.asset('assets/small Equipment.png'),
                ),
                Text(
                  'Small Equipments',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.notoSans(
                      fontSize: 24.0, fontWeight: FontWeight.w600),
                ),
                Text(
                  'Headphones, Radios, DVDs, Projectors, Cameras, Remotes',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.notoSans(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(127, 217, 87, 100)),
                ),
              ],
            ),
            padding: EdgeInsets.all(5.0),
            margin: EdgeInsets.all(10.0),
            width: 395,
            height: 190,
          ),
        ),
      ],
    );
  }
}

class screenMonitors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromRGBO(217, 217, 217, 100),
          borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Mydispose()));
        },
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 85.0,
              // color: Colors.green,
              child: Image.asset('assets/screens&monitors.png'),
            ),
            Text(
              'Screens & Monitors',
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSans(
                  fontSize: 24.0, fontWeight: FontWeight.w600),
            ),
            Text(
              'Laptop, Tablets, Flatpanel Display',
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSans(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(127, 217, 87, 100)),
            ),
          ],
        ),
      ),
      padding: EdgeInsets.all(5.0),
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
        bottom: 10,
      ),
      width: MediaQuery.of(context).size.width,
      height: 190,
    );
  }
}

class LargeEquipments extends StatelessWidget {
  const LargeEquipments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Mydispose()));
        },
        child: Column(
          children: [
            Container(
              width: 85.0,
              height: 85.0,
              // color: Colors.green,
              child: Image.asset('assets/Large E.png'),
            ),
            Text(
              'Large Equipments',
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSans(
                  fontSize: 24.0, fontWeight: FontWeight.w600),
            ),
            Text(
              'Washing machines, Refrigerators, Microwave',
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSans(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(127, 217, 87, 100)),
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
          color: Color.fromRGBO(217, 217, 217, 100),
          borderRadius: BorderRadius.circular(12)),
      padding: EdgeInsets.all(5.0),
      margin: EdgeInsets.only(
        right: 10,
        left: 10,
        bottom: 10,
      ),
      width: MediaQuery.of(context).size.width,
      height: 190,
    );
  }
}
