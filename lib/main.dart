import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtubeclone/binding/init_binding.dart';
import 'package:youtubeclone/components/yotube_detail.dart';
import 'package:youtubeclone/src/app.dart';
import 'package:youtubeclone/util/swatch_material_color.dart';

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
        primarySwatch: createMaterialColor(Color(0xFFFFFFFF)),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialBinding: InitBinding(),
      initialRoute: "/",
      getPages: [
        GetPage(name:"/",page: () =>const App()),
        GetPage(name:"/detail/:videoId",page: () => YoutubeDetail()),
      ],
    );
  }
}


