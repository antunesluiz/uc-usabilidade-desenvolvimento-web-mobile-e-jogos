import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  TextEditingController comprimentoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();
  TextEditingController larguraController = TextEditingController();

  String resp = '';

  somar(String operacao) {
    double comprimento = double.parse(this.comprimentoController.text);
    double altura = double.parse(this.alturaController.text);
    double largura = double.parse(this.larguraController.text);

    double volume = comprimento * altura * largura;

    this.resp = 'Volume = $volume';

    this.setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página inicial'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: this.comprimentoController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => this.comprimentoController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Informe o comprimento',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: this.alturaController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => this.alturaController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Informe a altura',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: this.larguraController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => this.larguraController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Informe a largura',
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  this.somar("+");
                  print(this.resp);
                },
                child: Text(
                  'Calcular volume',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              this.resp,
              style: TextStyle(
                fontSize: 20,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
