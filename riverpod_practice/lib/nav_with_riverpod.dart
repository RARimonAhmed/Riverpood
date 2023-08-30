import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/new_page.dart';

class NavNotifier extends StateNotifier<NewPage>{
  NavNotifier():super(const NewPage());
}

final nextPageRoute = StateNotifierProvider<NavNotifier,NewPage>((ref) {
  return NavNotifier();
});