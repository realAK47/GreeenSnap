import 'package:flutter/material.dart';
import 'package:greensnap/screens/PlanCamScreen.dart';

class HomeScreen extends StatelessWidget {
  static String id = "HomeScreen";

  @override
  Widget build(BuildContext context) {
    MediaQueryData querydata = MediaQuery.of(context);

    return Material(
      child: Scaffold(
        body: SafeArea(
          child: Container(
            color: Color(0xff1A4F5A),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Center(
                          child: Text(
                            "What would you ",
                            style: TextStyle(
                              color: Color(0xffCEB58C),
                              fontSize: querydata.size.width * 0.075,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            "like to do ?",
                            style: TextStyle(
                              color: Color(0xffCEB58C),
                              fontSize: querydata.size.width * 0.075,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, PlantCamScreen.id);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xffCFD3CE),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(child: Image.asset("images/plant.png")),
                              Expanded(
                                child: Container(
                                  height: querydata.size.height * 0.25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xff1A4F5A),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        "Plant A Tree",
                                        style: TextStyle(
                                          color: Color(0xffCEB58C),
                                          fontSize: 20,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industr ",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffCFD3CE),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Expanded(child: Image.asset("images/donate.png")),
                            Expanded(
                              child: Container(
                                height: querydata.size.height * 0.25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff1A4F5A),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "Contribute",
                                      style: TextStyle(
                                        color: Color(0xffCEB58C),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the  ",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffCFD3CE),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Expanded(
                                child: Image.asset("images/menstrual-cup.png")),
                            Expanded(
                              child: Container(
                                height: querydata.size.height * 0.25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff1A4F5A),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "Hello Cups!",
                                      style: TextStyle(
                                        color: Color(0xffCEB58C),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the  ",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
