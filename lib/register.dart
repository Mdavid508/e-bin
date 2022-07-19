import 'package:e_bin/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_bin/categories.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomepage extends StatelessWidget {
  // const MyHomepage({Key? key}) : super(key: key);

  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailContoller = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _rpasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(156, 93, 236, 32),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                width: 374,
                child: Image.asset(
                  'assets/registerimage.png',
                  height: 250,
                  width: 300,
                ),
              ),
              Text(
                'You want to dispose your E-waste? Dispose with us!',
                style: GoogleFonts.notoSans(
                    color: Color.fromRGBO(66, 62, 175, 100),
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              // Text(
              //   'Signup',
              //   style: GoogleFonts.notoSans(
              //       fontSize: 30, fontWeight: FontWeight.w600),
              //   textAlign: TextAlign.center,
              // ),
              //name container
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                width: MediaQuery.of(context).size.width,
                height: 55,
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 5,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10,
                        right: 0,
                      ),
                      child: TextFormField(
                        controller: _nameController,
                        style: GoogleFonts.notoSans(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w400),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Input Username',
                            hintStyle: GoogleFonts.notoSans(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 22,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              //email container
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                width: 400,
                height: 55,
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 10,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10,
                        right: 0,
                      ),
                      child: TextFormField(
                        controller: _emailContoller,
                        style: GoogleFonts.notoSans(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w400),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Input Email',
                          hintStyle: GoogleFonts.notoSans(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //phone number container
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                width: 400,
                height: 55,
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 10,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10,
                        right: 0,
                      ),
                      child: TextFormField(
                        controller: _phoneController,
                        style: GoogleFonts.notoSans(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w400),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Phone Number',
                          hintStyle: GoogleFonts.notoSans(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //password container
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                width: 400,
                height: 55,
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 10,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10,
                        right: 0,
                      ),
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        style: GoogleFonts.notoSans(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w400),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Input Password',
                          hintStyle: GoogleFonts.notoSans(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //Repeat password container
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                width: MediaQuery.of(context).size.width,
                height: 55,
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 10,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10,
                        right: 0,
                      ),
                      child: TextFormField(
                        controller: _rpasswordController,
                        obscureText: true,
                        style: GoogleFonts.notoSans(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w400),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Repeat Password',
                          hintStyle: GoogleFonts.notoSans(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 55,
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
                    'Sign Up',
                    style: GoogleFonts.notoSans(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
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
                      'Have an account?',
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
                                builder: (context) => MyLoginPage()));
                      },
                      child: Container(
                        child: Text(
                          'Login',
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
        ),
      ),
    );
  }
}
