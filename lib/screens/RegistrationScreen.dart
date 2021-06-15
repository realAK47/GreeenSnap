import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegistrationCsreen extends StatefulWidget {
  static String id = "RegistrationScreen";

  @override
  _RegistrationCsreenState createState() => _RegistrationCsreenState();
}

class _RegistrationCsreenState extends State<RegistrationCsreen> {
  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff1A4F5A),
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  "REGISTRATION",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    letterSpacing: 4,
                    fontSize: 30,
                    color: Color(0xffCEB58C),
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
                    hintText: "Name",
                    hintStyle: TextStyle(
                      fontSize: 20,
                      color: Color(0xffbcbcbc),
                    ),
                  ),
                  keyboardType: TextInputType.name,
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
                    hintText: "Phone Number",
                    hintStyle: TextStyle(
                      fontSize: 20,
                      color: Color(0xffbcbcbc),
                    ),
                  ),
                  keyboardType: TextInputType.number,
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
                  obscureText: true,
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
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Confrm Password",
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
                height: 20,
              ),
              SizedBox(
                child: Text(
                  "Send OTP",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                height: 40,
              ),
              Text(
                "Enter OTP",
                style: TextStyle(
                  color: Color(0xffCEB58C),
                  fontSize: 25,
                ),
              ),
              Container(
                width: queryData.size.width * 0.4,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  showCursor: false,
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                        value: checkBoxValue,
                        activeColor: Colors.green,
                        onChanged: (val) {
                          setState(() {
                            checkBoxValue = !checkBoxValue;
                          });
                        }),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "By checking the box , you ",
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                        Text(
                          "agree to our terms and policies",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 12,
                              color: Colors.blueAccent),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {
                  Navigator.pushNamed(context, RegistrationCsreen.id);
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
        ),
      ),
    );
  }
}