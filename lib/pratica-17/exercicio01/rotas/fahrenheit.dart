import 'package:flutter/material.dart';

class Fahrenheit extends StatelessWidget {
  const Fahrenheit({Key? key}) : super(key: key);

  static String routeName = '/fahrenheit';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grau Fahrenheit'),
      ),
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  converter(double celsius) => celsius * 1.8 + 32;

  @override
  Widget build(BuildContext context) {
    ArgumentosDaRota argumentos =
        ModalRoute.of(context)!.settings.arguments as ArgumentosDaRota;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 5),
          Text(
            'Graus Celsius: ${argumentos.graus.toStringAsFixed(1)}',
            style: TextStyle(
              color: Colors.green,
              fontSize: 25,
            ),
          ),
          Text(
            'Graus Fahrenheit: ${converter(argumentos.graus)}',
            style: TextStyle(
              color: Colors.red,
              fontSize: 25,
            ),
          ),
          SizedBox(height: 50),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}

class ArgumentosDaRota {
  final double graus;

  ArgumentosDaRota({required this.graus});
}
