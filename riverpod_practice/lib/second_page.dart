import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:riverpod_practice/controllers/counter_controller_riverpod.dart';
import 'package:riverpod_practice/main.dart';
import 'package:riverpod_practice/models/counter_model_counter.dart';

class SecondPage extends ConsumerStatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends ConsumerState<SecondPage> {
  @override
  Widget build(BuildContext context) {
    final counterValue = ref.watch(counterProvider).initialValue;
    ref.listen(counterProvider, (previous, next) {
      if(next.initialValue == -1){
        Get.snackbar(
          "Dont press minimize",
          "Its no need",
          icon: Icon(Icons.warning_amber_outlined, color: Colors.red),
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),centerTitle: true,
        actions: [
          Padding(padding: const EdgeInsets.only(right: 20,),child: IconButton(onPressed: (){
            ref.invalidate(counterProvider);
          }, icon: const Icon(Icons.refresh),),),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text("Riverpod counter is Example"),
          ),
          Center(
            child: Text(counterValue.toString()),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                onPressed: () {
                  ref.watch(counterProvider.notifier).increament();
                },
                child: const Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: () {
                  ref.watch(counterProvider.notifier).decrement();
                },
                child: const Icon(Icons.minimize),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
