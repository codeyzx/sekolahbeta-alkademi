import 'package:alkademi/latihan_keenam.dart';
import 'package:alkademi/latihan_kelima.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Sekolah Beta Alkademi'),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const <Widget>[
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'List Latihan Flutter',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              CustomButton(widgetNavigate: LatihanLima(), title: 'Kelima'),
              CustomButton(widgetNavigate: LatihanKeenam(), title: 'Keenam'),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final Widget widgetNavigate;
  final String title;
  const CustomButton({Key? key, required this.widgetNavigate, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => widgetNavigate,
          ),
        );
      },
      child: Text('Latihan $title'),
    );
  }
}
