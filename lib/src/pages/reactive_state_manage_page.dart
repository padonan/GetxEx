import 'package:example_nav2/src/Home.dart';
import 'package:example_nav2/src/controller/count_controller_with_getx.dart';
import 'package:example_nav2/src/controller/count_controller_with_provider.dart';
import 'package:example_nav2/src/controller/count_controller_with_rective.dart';
import 'package:example_nav2/src/pages/state/with_getx.dart';
import 'package:example_nav2/src/pages/state/with_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class ReactiveStateManagePage extends StatelessWidget {
  const ReactiveStateManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Get.put(CountControllerWithReactive());

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("반응형 상태관리"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Get X", style: TextStyle(fontSize: 30)),
            // GetX(
            //   builder: (_){
            //     return Text(
            //       "${Get.find<CountControllerWithReactive>().count.value}",
            //       style: TextStyle(fontSize: 50));
            // }),
            Obx(() {
              //print("UPDATE!!!");
              return Text(
                "${Get.find<CountControllerWithReactive>().count.value}",
                style: TextStyle(fontSize: 50));}),
            TextButton(
                child: Text("+", style: TextStyle(fontSize: 30)),
                onPressed: (){
                  Get.find<CountControllerWithReactive>().increase();
              }
            ),
            TextButton(
                child: Text("5로 변경", style: TextStyle(fontSize: 30)),
                onPressed: (){
                  Get.find<CountControllerWithReactive>().putNumber(5);
                }
            ),
          ],
        ),
      ),
    );
  }
}
