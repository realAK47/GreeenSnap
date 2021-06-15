import 'package:flutter/material.dart';
import 'package:greensnap/screens/LoginScreen.dart';
import 'package:greensnap/screens/PlanCamScreen.dart';
import 'screens/PlanCamScreen.dart';
import 'package:greensnap/screens/RegistrationScreen.dart';
import 'Data/DataCollection.dart';
import 'package:provider/provider.dart';
import 'screens/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DataCollection>(
        create: (context) => DataCollection(),
        child: MaterialApp(
          initialRoute: LoginScreen.id,
          routes: {
            HomeScreen.id: (context) => HomeScreen(),
            LoginScreen.id: (context) => LoginScreen(),
            RegistrationCsreen.id: (context) => RegistrationCsreen(),
            PlantCamScreen.id: (context) => PlantCamScreen(),
          },
        ));
  }
}
