import 'package:flutter/material.dart';
import 'package:pratica_02/pratica-22/models/produto.dart';

class ListaMenu {
  static List<DropdownMenuItem<Produto>> getListaProdutosMenu(List produtos) {
    List<DropdownMenuItem<Produto>> listaProdutosMenu = []; //Nova lista.
    for (Produto produto in produtos) {
      listaProdutosMenu.add(
        DropdownMenuItem(
          value: produto,
          child: Text(produto.nome),
        ),
      );
    }
    return listaProdutosMenu;
  }
}
