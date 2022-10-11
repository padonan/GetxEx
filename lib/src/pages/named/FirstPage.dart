import 'package:example_nav2/src/pages/normal/SecondPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstNamedPage extends StatelessWidget {
  const FirstNamedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("First Named Page")),
        body: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: Text("다음페이지 이동"),
              onPressed: (){
                // Navigator.of(context).push(MaterialPageRoute(builder: (_) => FirstPage())); 일반적인 Route
              },
            ),
          ],
        ),
      ),
    );
  }
}
