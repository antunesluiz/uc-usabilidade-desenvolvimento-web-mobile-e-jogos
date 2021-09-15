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
  TextEditingController num01Controller = TextEditingController();
  TextEditingController num02Controller = TextEditingController();

  String resp = '';

  somar(String operacao) {
    double num01 = double.parse(this.num01Controller.text);
    double num02 = double.parse(this.num02Controller.text);

    double resposta = 0;

    switch (operacao) {
      case '+':
        resposta = num01 + num02;
        this.resp = '$num01 + $num02 = ' + resposta.toStringAsFixed(2);
        break;
      case '-':
        resposta = num01 - num02;
        this.resp = '$num01 - $num02 = ' + resposta.toStringAsFixed(2);
        break;
      case '/':
        resposta = num01 / num02;
        this.resp = '$num01 / $num02 = ' + resposta.toStringAsFixed(2);
        break;
      case '*':
        resposta = num01 * num02;
        this.resp = '$num01 * $num02 = ' + resposta.toStringAsFixed(2);
        break;
    }

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
              controller: this.num01Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => this.num01Controller.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Informe o segundo número',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: num02Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => num02Controller.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Informe o segundo número',
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
                  'Somar',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  this.somar("-");
                  print(this.resp);
                },
                child: Text(
                  'Subtrair',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  this.somar("*");
                  print(this.resp);
                },
                child: Text(
                  'Multiplicar',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  this.somar("/");
                  print(this.resp);
                },
                child: Text(
                  'Dividir',
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
