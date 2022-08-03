import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:value_listenable/exemplo_dois/exemplo_dois_notifier.dart';

//Exemplo com uma classe herdando de ValueNotifier.

class ExemploDois extends StatelessWidget {
  ExemploDois({ Key? key }) : super(key: key);

  final ExemploDoisNotifier _notifier = ExemploDoisNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter ValueListenableBuilder'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //ValueListenableBuilder é uma classe que se registra automaticamente como um listener do ValueListenable.
            ValueListenableBuilder<int>(
              valueListenable: _notifier,
              builder: (BuildContext context, int valor, _) {
                log('objeto notificado');
                return Text(valor.toString());
              },
            ),
            
            ElevatedButton(
              onPressed: () {
                _notifier.increment();
              },
              child: const Text('Incrementar'),
            ),
            ElevatedButton(
              onPressed: () {
                _notifier.decrement();
              },
              child: const Text('Decrementar'),
            )
          ],
        ),
      ),
    );
  }
}