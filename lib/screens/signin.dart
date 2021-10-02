import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:programming_resources/screens/signup.dart';
import 'package:programming_resources/widgets/text_helper.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0,),
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
                        text: "Welcome Back!",
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
                        text: "Let's resume again ",
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
                              hintText: "Username or Email",
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
                  Padding(
                    padding: const EdgeInsets.only(top: 20, right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextHelper(
                          text: "Forget Password?",
                          size: 14,
                          weight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20.0, right: 20, top: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 30, 108, 1),
                          borderRadius: BorderRadius.circular(10)),
                      height: 60,
                      child: Center(
                        child: TextHelper(
                          text: "Signin",
                          size: 18,
                          weight: FontWeight.normal,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              )),
              Spacer(),
              Row(children: <Widget>[
                Expanded(
                    child: Divider(
                  height: 2,
                )),
                SizedBox(
                  width: 1,
                ),
                TextHelper(
                  text: " or login with ",
                  size: 14,
                  weight: FontWeight.normal,
                  color: Colors.grey[700],
                ),
                SizedBox(
                  width: 1,
                ),
                Expanded(
                    child: Divider(
                  height: 2,
                )),
              ]),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 20,
                    width: 30,
                    child: Image.network(
                        'https://cdn-icons-png.flaticon.com/128/2991/2991148.png'),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 20,
                    width: 30,
                    child: Image.network(
                        'https://cdn-icons-png.flaticon.com/128/1384/1384053.png'),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (b)=>SignUp()));
                },
                child: TextHelper(
                  text: "New User ? Signup",
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
