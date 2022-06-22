import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtubeclone/src/app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "App",
      theme: ThemeData(
        //primaryColor: Colors.white,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "/",
      getPages: [
        GetPage(name:"/",page: () =>const App())
      ],
    );
  }
}

