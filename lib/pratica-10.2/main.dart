import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      home: Home(),
    ),
  );
}

class Home extends StatefulWidget {
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();

  String result = '';

  calcularImc() {
    double peso = double.parse(this.pesoController.text);
    double altura = double.parse(this.alturaController.text);

    double imc = peso / (altura * altura);

    if (imc < 16) {
      this.result = 'imc = $imc. Magresa grave';
    } else if (imc < 17) {
      this.result = 'imc = $imc. Magresa moderada';
    } else if (imc < 18.5) {
      this.result = 'imc = $imc. Magresa leve';
    } else if (imc < 25) {
      this.result = 'imc = $imc. Saudável';
    } else if (imc < 30) {
      this.result = 'imc = $imc. Sobrepeso';
    } else if (imc < 35) {
      this.result = 'imc = $imc. Obesidade Grau I';
    } else if (imc < 40) {
      this.result = 'imc = $imc. Obesidade Grau II (severa)';
    } else {
      this.result = 'imc = $imc. Obesidade Grau III (mórbida)';
    }

    this.setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de IMC'),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: this.pesoController,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () => this.pesoController.clear(),
                          icon: Icon(Icons.clear),
                        ),
                        border: OutlineInputBorder(),
                        labelText: 'Insira o seu peso'),
                  ),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Flexible(
                  child: TextField(
                    controller: this.alturaController,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () => this.alturaController.clear(),
                          icon: Icon(Icons.clear),
                        ),
                        border: OutlineInputBorder(),
                        labelText: 'Insira a sua altura'),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: ElevatedButton(
                onPressed: () => this.calcularImc(),
                child: Text(
                  'Calcular IMC',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text(
                this.result,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
