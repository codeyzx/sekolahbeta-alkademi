import 'package:flutter/material.dart';

class LatihanLima extends StatelessWidget {
  const LatihanLima({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halo saya latihan'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            const Text('Saya widget ditengah'),
            Container(
              color: Colors.redAccent,
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                Text('saya kiri'),
                Text('saya kanan'),
              ],
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              color: Colors.yellow,
              child: Container(
                alignment: Alignment.center,
                color: Colors.purpleAccent,
                padding: const EdgeInsets.all(10),
                child: const Text('Saya berwarna'),
              ),
            ),
            const Spacer(),
            Container(
              alignment: Alignment.center,
              height: 100,
              color: Colors.black,
              child: const Text(
                'Saya dibawah sendiri',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.abc),
      ),
    );
  }
}
