import 'package:flutter/material.dart';
import 'package:value_listenable/exemplo_dois/exemplo_dois.dart';
import 'package:value_listenable/exemplo_tres/exemplo_tres.dart';
import 'package:value_listenable/exemplo_um/exemplo_um.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ExemploTres(),
    );
  }
}
