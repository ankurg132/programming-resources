import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:programming_resources/screens/signin.dart';
import 'package:programming_resources/widgets/text_helper.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                ),
                child: Row(
                  children: [
                    Container(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back_ios_new_outlined,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20.0),
                child: Container(
                  child: Row(
                    children: [
                      TextHelper(
                        text: "Programming Resources",
                        size: 30,
                        weight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 20, bottom: 20),
                child: Container(
                  child: Row(
                    children: [
                      TextHelper(
                        text: "Start your coding journey",
                        size: 18,
                        weight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
              Form(
                  child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 20,
                    ),
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent)),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent)),
                              hintText: "Username",
                              hintStyle: GoogleFonts.ubuntu(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 13)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 20.0,
                      right: 20,
                    ),
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent)),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent)),
                              hintText: "Email",
                              hintStyle: GoogleFonts.ubuntu(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 13)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20.0, right: 20),
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent)),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent)),
                              hintText: "Password",
                              hintStyle: GoogleFonts.ubuntu(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 13)),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(left:20.0,right: 20),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 30, 108, 1),
                      borderRadius: BorderRadius.circular(10)),
                  height: 60,
                  child: Center(
                    child: TextHelper(
                      text: "SignUp",
                      size: 18,
                      weight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (b) => SignIn()));
                },
                child: TextHelper(
                  text: "Already have an account? Signin",
                  size: 14,
                  weight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
