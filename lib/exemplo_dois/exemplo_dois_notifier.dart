import 'package:flutter/material.dart';

//Com essa classe podemos ter uma regra de negocio mais apurada para determinado objeto ou acao.
class ExemploDoisNotifier extends ValueNotifier<int>{
  ExemploDoisNotifier(int value) : super(value);
  
  void increment(){
    value++;
  }

  void decrement(){
    value--;
  }
}