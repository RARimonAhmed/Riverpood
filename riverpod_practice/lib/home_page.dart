import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';

import 'main.dart';
import 'nav_with_riverpod.dart';
import 'new_page.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final navPage = ref.watch(nextPageRoute.notifier).state;
    final name = ref.watch(helloProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Consumer(
              builder: (context,ref,child){
                final consumerText = ref.watch(testConsumerProvider);
                return Text(consumerText);
              },
            ),
          ),
          SizedBox(height: 30,),
          Text("Nav is $navPage"),
          ElevatedButton(onPressed: (){
            Get.toNamed("/nav_page");
          }, child: const Text("New Page")),
        ],
      ),
    );
  }
}