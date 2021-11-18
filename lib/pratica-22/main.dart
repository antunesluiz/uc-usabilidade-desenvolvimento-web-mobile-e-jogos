import 'package:flutter/material.dart';
import 'package:pratica_02/pratica-22/telas/menu_suspenso.dart';

void main() {
  return runApp(Aplicativo());
}

class Aplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Exemplo de DropdownMenu'),
        ),
        body: Center(
          child: MenuSuspenso(),
        ),
      ),
    );
  }
}
