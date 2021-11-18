import 'package:flutter/material.dart';
import 'package:pratica_02/pratica-17/temperatura/rotas/fahrenheit.dart';

class Celsius extends StatelessWidget {
  const Celsius({Key? key}) : super(key: key);

  static String routeName = '/celsius';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grau Celsius'),
      ),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        CelsiusForm(),
      ],
    );
  }
}

class CelsiusForm extends StatefulWidget {
  const CelsiusForm({
    Key? key,
  }) : super(key: key);

  @override
  _CelsiusFormState createState() => _CelsiusFormState();
}

class _CelsiusFormState extends State<CelsiusForm> {
  TextEditingController inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Temperatura em graus celsius',
                border: OutlineInputBorder(),
                labelText: 'Temperatura em graus celsius',
                suffixIcon: IconButton(
                  onPressed: () => inputController.clear(),
                  icon: Icon(Icons.clear),
                ),
              ),
              controller: inputController,
              keyboardType: TextInputType.number,
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(
              context,
              Fahrenheit.routeName,
              arguments: ArgumentosDaRota(
                graus: double.parse(inputController.text),
              ),
            ),
            child: Text('Converter'),
          ),
        ],
      ),
    );
  }
}
