import 'package:flutter/material.dart';
import 'package:pratica_02/pratica-22/components/lista_manu.dart';
import 'package:pratica_02/pratica-22/models/produto.dart';

class MenuSuspenso extends StatefulWidget {
  MenuSuspensoState createState() {
    return MenuSuspensoState();
  }
}

class MenuSuspensoState extends State<MenuSuspenso> {
  Produto? produtoSelecionado;
  List<DropdownMenuItem<Produto>>? listaProdutosMenu;
  /*O método initState() gera o estado inicial do widget
 quando um objeto da classe é instanciado.*/
  @override
  void initState() {
    listaProdutosMenu = ListaMenu.getListaProdutosMenu(
      Produto.getProdutos(),
    );
    produtoSelecionado = listaProdutosMenu![0].value;
    super.initState();
  }

  aoSelecionarProduto(Produto? produtoSelecionado) {
    setState(
      () {
        this.produtoSelecionado = produtoSelecionado;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Text(
          'Produto:',
          style: TextStyle(
            color: Colors.purple.shade900,
            fontSize: 36,
          ),
        ),
        SizedBox(height: 20),
        DropdownButton(
          value: this.produtoSelecionado,
          items: this.listaProdutosMenu,
          onChanged: this.aoSelecionarProduto,
          icon: Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
        ),
        SizedBox(height: 20),
        Text('${this.produtoSelecionado!.nome}'),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.all(8),
          child: Image.network(
            this.produtoSelecionado!.url,
            height: 250,
            width: double.infinity,
          ),
        ),
        SizedBox(height: 10),
        Text(this.produtoSelecionado!.descricao),
        SizedBox(height: 10),
        Text(
          'R\$ ' + this.produtoSelecionado!.preco.toStringAsFixed(2),
          style: TextStyle(
            color: Colors.purple.shade900,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
