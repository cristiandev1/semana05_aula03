import 'dart:developer';

import 'package:flutter/material.dart';

class ExemploUm extends StatefulWidget {
  const ExemploUm({Key? key}) : super(key: key);

  @override
  State<ExemploUm> createState() => _ExemploUmState();
}

//Exemplo de contador normal

class _ExemploUmState extends State<ExemploUm> {
  final ValueNotifier<int> _contador = ValueNotifier<int>(0);

  @override
  void dispose() {
    _contador.dispose(); //evitar perda e gargalos de memória no app
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    log("Build normal");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter ValueListenableBuilder'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ValueListenableBuilder<int>(
              valueListenable: _contador,
              builder: (BuildContext context, int valor, _ ) {
                log("Build ValueListenableBuilder");
                return Text('$valor');
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _contador.value++;
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
