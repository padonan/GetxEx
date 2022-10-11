import 'package:example_nav2/src/pages/normal/FirstPage.dart';
import 'package:example_nav2/src/pages/reactive_state_manage_page.dart';
import 'package:example_nav2/src/pages/simple_state_manage_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("라우트 관리 홈"),
      ),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            child: Text("일반적인 라우트"),
            onPressed: (){
              // Navigator.of(context).push(MaterialPageRoute(builder: (_) => FirstPage())); 일반적인 Route
              Get.to(FirstPage());
              },
            ),
          TextButton(
            child: Text("Arguments 전달"),
            onPressed: (){
              // Navigator.of(context).push(MaterialPageRoute(builder: (_) => FirstPage())); 일반적인 Route
              Get.toNamed("/next", arguments: User(name:'황근출', age: 24));
              },
            ),
          TextButton(
            child: Text("동적url"),
            onPressed: (){
              // Navigator.of(context).push(MaterialPageRoute(builder: (_) => FirstPage())); 일반적인 Route
              Get.toNamed("/user/28357?name=황근출상병&age=25");
              },
            ),
          TextButton(
            child: Text("단순상태관리"),
            onPressed: (){
              // Navigator.of(context).push(MaterialPageRoute(builder: (_) => FirstPage())); 일반적인 Route
              Get.to(SimpleStateManagePage());
              },
            ),
          TextButton(
            child: Text("반응형상태관리"),
            onPressed: (){
              // Navigator.of(context).push(MaterialPageRoute(builder: (_) => FirstPage())); 일반적인 Route
              Get.to(ReactiveStateManagePage());
            },
          ),
          ],
        ),
      ),
    );
  }
}

class User {
  String? name;
  int? age;
  User({this.name, this.age});
}

