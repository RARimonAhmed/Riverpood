import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';

import 'main.dart';

class NewPage extends ConsumerStatefulWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends ConsumerState<NewPage> {
  @override
  Widget build(BuildContext context) {
    final nameText = ref.watch(testConsumerProvider);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(nameText),
          ),
          ElevatedButton(onPressed: (){
            Get.toNamed("/second_page");
          }, child: const Text("Go to next")),
        ],
      ),
    );
  }
}
