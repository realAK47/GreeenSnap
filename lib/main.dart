import 'package:flutter/material.dart';
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
          initialRoute: HomeScreen.id,
          routes: {
            HomeScreen.id: (context) => HomeScreen(),
          },
        ));
  }
}
