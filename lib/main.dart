import 'package:example_nav2/src/Home.dart';
import 'package:example_nav2/src/pages/Next.dart';
import 'package:example_nav2/src/pages/User.dart';
import 'package:example_nav2/src/pages/named/FirstPage.dart';
import 'package:example_nav2/src/pages/named/SecondPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  static final List<GetPage> route = [
    GetPage(name: '/', page : () => Home(),),
    GetPage(name: '/first', page : () => FirstNamedPage()),
    GetPage(name: '/second', page : () => SecondNamedPage()),
    GetPage(name: '/next', page : () => NextPage()),
    GetPage(name: '/user/:uid', page : () => UserPage()),
  ];

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "/",
      getPages: route,
    );
  }
}

