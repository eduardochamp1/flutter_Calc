import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            title: Text('Calculadora Elite37'), backgroundColor: Colors.black),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '0',
                    style: TextStyle(color: Colors.white, fontSize: 100),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                btCalc(cor: Colors.grey, texto: '7'),
                btCalc(cor: Colors.grey, texto: '8'),
                btCalc(cor: Colors.grey, texto: '9'),
                btCalc(cor: Colors.blueAccent, texto: '+'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                btCalc(cor: Colors.grey, texto: '4'),
                btCalc(cor: Colors.grey, texto: '5'),
                btCalc(cor: Colors.grey, texto: '6'),
                btCalc(cor: Colors.blueAccent, texto: '-'),
              ],
            ),
          ],
        ));
  }
}

Widget btCalc({required Color cor, required String texto}) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          fixedSize: const Size(100, 100),
          shape: CircleBorder(),
          backgroundColor: cor),
      child: Text(
        texto,
        style: const TextStyle(fontSize: 50),
      ),
    ),
  );
}
