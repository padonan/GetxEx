import 'package:example_nav2/src/Home.dart';
import 'package:example_nav2/src/controller/count_controller_with_getx.dart';
import 'package:example_nav2/src/controller/count_controller_with_provider.dart';
import 'package:example_nav2/src/pages/state/with_getx.dart';
import 'package:example_nav2/src/pages/state/with_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class SimpleStateManagePage extends StatelessWidget {
  const SimpleStateManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          title: const Text("단순상태관리"),
      ),
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: WithGetX()),

          Expanded(child: ChangeNotifierProvider<CountControllerWithProvider>(
            create: (_)=>CountControllerWithProvider(),
            child: WithProvider(),
          )),
         ],
        ),
      ),
    );
  }
}
