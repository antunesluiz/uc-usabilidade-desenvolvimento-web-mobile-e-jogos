import 'package:flutter/material.dart';
import 'package:pratica_02/pratica-19/components/cartao.dart';
import 'package:pratica_02/pratica-19/models/transporte.dart';

class RotaGenerica extends StatelessWidget {
  const RotaGenerica({
    Key? key,
    required this.transporte,
  }) : super(key: key);

  final Transporte transporte;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.transporte.titulo),
      ),
      body: Center(
        child: Column(
          children: [
            Cartao(this.transporte),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Voltar para a primeira rota'),
            )
          ],
        ),
      ),
    );
  }
}
