import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jimin_youtube_clone/src/app.dart';
import 'package:jimin_youtube_clone/src/binding/init_binding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Youtube Clone App',
      theme: ThemeData(
        primaryColor: Colors.white,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialBinding: InitBinding(),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: ()=>App())
      ],
    );
  }
}
