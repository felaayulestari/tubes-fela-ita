//import dart
import 'package:flutter/material.dart';
import 'package:psychotest_felaita/pages/home.dart';
import 'package:psychotest_felaita/pages/analisis.dart';
import 'package:psychotest_felaita/pages/daftarKepribadian.dart';
import 'package:psychotest_felaita/pages/pertanyaan.dart';
import 'package:psychotest_felaita/pages/rekap.dart';

//main method
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/kuisioner': (context) => Pertanyaan(),
        '/analisis': (context) => Analisis(),
        '/daftarKepribadian': (context) => DaftarKepribadian(),
        '/rekap': (context) => Rekap(),
      },
    );
  }
}
