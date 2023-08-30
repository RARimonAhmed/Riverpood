import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:riverpod_practice/controllers/counter_controller_riverpod.dart';
import 'package:riverpod_practice/home_page.dart';
import 'package:riverpod_practice/route_management_getx/route_using_getx.dart';

import 'models/counter_model_counter.dart';

final helloProvider = Provider<String>((ref) {
  return "Hello riverpod";
});

final testConsumerProvider = Provider<String>((ref){
  return "Read with Consumer widget";
});

final counterProvider = StateNotifierProvider<CounterRiverpod,CounterModel>((ref) {
  return CounterRiverpod();
});

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: "/home_page",
      getPages: getPagesByGetx,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
