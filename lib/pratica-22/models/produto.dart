import 'package:flutter/material.dart';

class Produto {
  int id;
  String url, nome, descricao;
  double preco;
  Produto({
    required this.id,
    required this.url,
    required this.nome,
    required this.descricao,
    required this.preco,
  });
  static List<Produto> getProdutos() {
    return [
      Produto(
        id: 1,
        url: 'https://picsum.photos/250?image=9',
        nome: 'Notebook',
        descricao: 'Notebook Dell Inspiron I15 Intel 8GB 1TB 15,6" Preto',
        preco: 30109.98,
      ),
      Produto(
        id: 2,
        url:
            'https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        nome: 'Bolo',
        descricao: 'Bolo em camadas com cobertura de frutas e nozes',
        preco: 15.19,
      ),
      Produto(
        id: 3,
        url:
            'https://images.pexels.com/photos/213798/pexels-photo-213798.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        nome: 'Torre e aerogerador',
        descricao: 'Torre e aerogerador - de energia eólica',
        preco: 50125.47,
      ),
    ];
  }
}
