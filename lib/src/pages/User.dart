import 'package:example_nav2/src/Home.dart';
import 'package:example_nav2/src/pages/normal/FirstPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("User Page")),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${Get.parameters['uid']}"),
          Text("${Get.parameters['name']}님 안녕하세요"),
          Text("${Get.parameters['age']}"),
          TextButton(
            child: Text("뒤로 이동"),
            onPressed: (){
              // Navigator.of(context).push(MaterialPageRoute(builder: (_) => FirstPage())); 일반적인 Route
              Get.back();
            },
          ),
          TextButton(
              onPressed: (){
                //Get.to(Home());
                Get.offAll(Home());
              }
              , child: Text('홈 이동'))
          ],
        ),
      ),
    );
  }
}
