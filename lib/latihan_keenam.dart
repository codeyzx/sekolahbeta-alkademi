import 'package:flutter/material.dart';

class LatihanKeenam extends StatelessWidget {
  const LatihanKeenam({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white60,
        appBar: AppBar(
          title: const Text('Latihan Keenam'),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1526481280693-3bfa7568e0f3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1471&q=80'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        'Hi, David',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                      Container(
                        height: 75,
                        width: 75,
                        margin: const EdgeInsets.only(top: 30),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSM7TQLcooJN0JZb2GgSBwDN80k1s1JnDuVfA&usqp=CAU'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              top: 240,
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: 350,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text('Halo Button'),
                        const Text('Pencet saya'),
                        ElevatedButton.icon(
                          onPressed: null,
                          label: const Text(
                            'Pesan Test Sekarang',
                            style: TextStyle(color: Colors.white),
                          ),
                          icon: const Icon(Icons.abc, color: Colors.black),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.orange),
                            minimumSize: MaterialStateProperty.all(const Size(220, 50)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
