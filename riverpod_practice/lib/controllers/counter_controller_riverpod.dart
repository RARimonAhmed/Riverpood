import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/counter_model_counter.dart';

class CounterRiverpod extends StateNotifier<CounterModel>{

  CounterRiverpod():super(CounterModel(initialValue: 0));

  void increament(){
    state = CounterModel(initialValue:state.initialValue + 1);
  }

  void decrement(){
    state = CounterModel(initialValue: state.initialValue - 1);
  }
}