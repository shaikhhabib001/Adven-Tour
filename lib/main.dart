import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

import 'views/MyHomePage.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
  ),);
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AdvenTour',
      /*theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        //primarySwatch: Colors.blue,

      ),*/
      theme: FlexThemeData.light(scheme: FlexScheme.outerSpace, fontFamily: 'Comfortaa'),
      // The Outer Space, dark theme.
      //darkTheme: FlexThemeData.dark(scheme: FlexScheme.outerSpace),
      // Use dark or light theme based on system setting.
      themeMode: ThemeMode.system,
      //home: const MainView(),
      home: const MyHomePage(title: "AdvenTour"),
    );
  }
}

