import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Exercise',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Layout Exercise'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.home),
                Icon(Icons.favorite),
                Icon(Icons.settings),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.blue,
                    child: const Text(
                      'Container 1',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  Container(
                    color: Colors.green,
                    child: const Text(
                      'Container 2',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  Container(
                    color: Colors.orange,
                    child: const Text(
                      'Container 3',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.black,
                  child: const Text(
                    'Imagem de Fundo',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  child: Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Promoção',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
