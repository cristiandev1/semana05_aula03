import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:value_listenable/exemplo_tres/evento.dart';

class ExemploTres extends StatefulWidget {
  ExemploTres({Key? key}) : super(key: key);

  @override
  State<ExemploTres> createState() => _ExemploTresState();
}

//Exemplo tres (mostrando o listener) como uma opcao para uma acao em "background".

class _ExemploTresState extends State<ExemploTres> {
  DispararEvento evento = DispararEvento();

  @override
  void initState() {
    evento.addListener(_onListener);
    super.initState();
  }

  void _onListener() {
    log('disparou um evento de push notification');
  }

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
            const Text('Lorem ipsum, lorem ipsum'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExemploTresTelaAdicional(evento: evento),
                  ),
                );
              },
              child: const Text('Ir para proxima tela'),
            )
          ],
        ),
      ),
    );
  }
}

class ExemploTresTelaAdicional extends StatefulWidget {
  final DispararEvento evento;

  const ExemploTresTelaAdicional({Key? key, required this.evento}) : super(key: key);

  @override
  State<ExemploTresTelaAdicional> createState() => _ExemploTresTelaAdicionalState();
}

class _ExemploTresTelaAdicionalState extends State<ExemploTresTelaAdicional> {

  @override
  void initState() {
    widget.evento.dispararPush();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter ValueListenableBuilder'),
      ),
      body: const Text('Evento disparado'),
    );
  }
}
