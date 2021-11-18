import 'package:flutter/material.dart';
import '../pratica-18/routes/primeira_rota.dart';
import '../pratica-18/routes/segunda_rota.dart';

void main() => runApp(MeuAplicativo());

class MeuAplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PrimeiraRota(),
      routes: {
        PrimeiraRota.routeName: (context) => PrimeiraRota(),
        SegundaRota.routeName: (context) => SegundaRota(),
      },
    );
  }
}
