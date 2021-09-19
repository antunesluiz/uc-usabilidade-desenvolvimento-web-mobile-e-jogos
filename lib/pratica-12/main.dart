import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (_) => PrimeiraTela(),
          '/segunda': (_) => SegundaTela(),
          '/terceira': (_) => TerceiraTela(),
          '/quarta': (_) => QuartaRota()
        },
      ),
    );

class PrimeiraTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primeira Tela'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(30),
              child: Text(
                '1',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/segunda');
              },
              child: Icon(
                Icons.navigate_next,
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.blue,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SegundaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Tela'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(30),
              child: Text(
                '2',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.navigate_before,
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.blue,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/terceira');
                  },
                  child: Icon(
                    Icons.navigate_next,
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.blue,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TerceiraTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terceira Tela'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(30),
              child: Text(
                '3',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.navigate_before,
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.blue,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/quarta');
                  },
                  child: Icon(
                    Icons.navigate_next,
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.blue,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class QuartaRota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quarta Tela'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(30),
              child: Text(
                '4',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.navigate_before,
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.blue,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.popUntil(
                      context,
                      ModalRoute.withName(
                        Navigator.defaultRouteName,
                      ),
                    );
                  },
                  child: Icon(
                    Icons.navigate_next,
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.blue,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
