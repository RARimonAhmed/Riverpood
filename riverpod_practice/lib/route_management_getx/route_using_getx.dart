import 'package:get/get.dart';
import 'package:riverpod_practice/home_page.dart';
import 'package:riverpod_practice/second_page.dart';

import '../new_page.dart';

final getPagesByGetx = [
  GetPage(name: "/", page:()=> HomePage()),
  GetPage(name: "/nav_page", page: ()=> NewPage()),
  GetPage(name: "/second_page", page: ()=> SecondPage())
];