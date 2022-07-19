import 'package:e_bin/categories.dart';
import 'package:e_bin/register.dart';
import 'package:e_bin/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());
final bgcolor = const Color(0xFF7ED957);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'e-bin',
      theme: theme(),
      home: MyLoginPage(),
    );
  }
}

class MyLoginPage extends StatelessWidget {
  // const MyLoginPage({Key? key}) : super(key: key);
  TextEditingController UsernameController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Image.asset('assets/registerimage.png'),
            ),
            Text(
              'You want to dispose your E-waste? Dispose with us!',
              style: GoogleFonts.notoSans(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(66, 62, 175, 100),
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 10,
              ),
              padding: EdgeInsets.only(
                left: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                controller: UsernameController,
                style: GoogleFonts.notoSans(
                  fontSize: 22,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Input Username',
                  hintStyle: GoogleFonts.notoSans(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 10,
              ),
              padding: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                controller: PasswordController,
                obscureText: true,
                style: GoogleFonts.notoSans(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Input Password',
                  hintStyle: GoogleFonts.notoSans(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 10,
              ),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(10, 102, 194, 100),
                  borderRadius: BorderRadius.circular(10)),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Mydisposepage(),
                      ));
                },
                child: Text(
                  'Login',
                  style: GoogleFonts.notoSans(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont have an account?',
                    style: GoogleFonts.notoSans(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyHomepage()));
                    },
                    child: Container(
                      child: Text(
                        'Register',
                        style: GoogleFonts.notoSans(
                          fontSize: 20,
                          color: Color.fromRGBO(85, 172, 238, 100),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
