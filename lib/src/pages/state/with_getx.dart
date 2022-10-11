import 'package:example_nav2/src/controller/count_controller_with_getx.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WithGetX extends StatelessWidget {
  WithGetX({Key? key}) : super(key: key);

  final CountControllerWithGetx _countControllerWithGetx = Get.put(CountControllerWithGetx());

  Widget _button(String id) {
    return TextButton(
        child: Text("+", style: TextStyle(fontSize: 30)),
        onPressed: (){
          _countControllerWithGetx.increase(id);
        }
      );
    }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Get X", style: TextStyle(fontSize: 30)),
          GetBuilder<CountControllerWithGetx>(
            id: "first",
            builder: (controller){
            return Text("${controller.count}",
                style: TextStyle(fontSize: 50));
            },
          ),
          GetBuilder<CountControllerWithGetx>(
            id: "second",
            builder: (controller){
            return Text("${controller.count}",
                style: TextStyle(fontSize: 50));
          },
          ),
          _button("first"),
          _button("second"),
        ],
      ),
    );
  }
}
