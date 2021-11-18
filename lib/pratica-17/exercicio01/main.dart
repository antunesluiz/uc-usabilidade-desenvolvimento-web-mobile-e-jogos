import 'package:flutter/material.dart';
import 'package:pratica_02/pratica-17/temperatura/rotas/celsius.dart';
import 'package:pratica_02/pratica-17/temperatura/rotas/fahrenheit.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: Celsius.routeName,
      routes: {
        Celsius.routeName: (context) => Celsius(),
        Fahrenheit.routeName: (context) => Fahrenheit()
      },
    ),
  );
}
