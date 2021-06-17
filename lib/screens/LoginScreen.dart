import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:greensnap/screens/HomeScreen.dart';

class LoginScreen extends StatelessWidget {
  static String id = "LoginScreen";

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Color(0xff1A4F5A),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Image.asset("images/login.png"),
                ),
                Text(
                  "LOGIN USER",
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xffCEB58C),
                    letterSpacing: 4,
                    decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: queryData.size.width * 0.7,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Phone Number",
                            hintStyle: TextStyle(
                              fontSize: 20,
                              color: Color(0xffbcbcbc),
                            ),
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          textAlign: TextAlign.center,
                          showCursor: false,
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: queryData.size.width * 0.7,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                            hintStyle: TextStyle(
                              fontSize: 20,
                              color: Color(0xffbcbcbc),
                            ),
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          textAlign: TextAlign.center,
                          showCursor: false,
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Forgot Password ?",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 18,
                          color: Color(0xffCFD3CE),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      FlatButton(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onPressed: () {
                          Navigator.pushNamed(context, HomeScreen.id);
                        },
                        child: Container(
                          width: queryData.size.width * 0.45,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Color(0xffCEB58C),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              "LOGIN",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w900,
                                color: Color(0xff1A4F5A),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        child: Center(
                          child: Text(
                            "OR",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xffCFD3CE),
                            ),
                          ),
                        ),
                        height: 30,
                      ),
                      FlatButton(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onPressed: () {
                          Navigator.pushNamed(context, HomeScreen.id);
                        },
                        child: Container(
                          width: queryData.size.width * 0.45,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Color(0xffCEB58C),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              "REGISTER",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w900,
                                color: Color(0xff1A4F5A),
                              ),
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
      ),
    );
  }
}
