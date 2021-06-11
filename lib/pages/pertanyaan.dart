import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:psychotest_felaita/daftarPertanyaan.dart';
import 'package:psychotest_felaita/dbHelper.dart';
import 'package:psychotest_felaita/models/Partisiapan.dart';
import 'package:psychotest_felaita/pages/analisis.dart';
import 'package:psychotest_felaita/perhitungan.dart';

void main() => runApp(Pertanyaan());

class Pertanyaan extends StatefulWidget {
  final nama;
  const Pertanyaan({Key key, this.nama}) : super(key: key);

  @override
  _PertanyaanState createState() => _PertanyaanState();
}

class _PertanyaanState extends State<Pertanyaan> {
  //variable untuk mengelompokkan radio button berdasarkan pertanyaan
  List<String> _score = List<String>();
  //var untuk menampung object dari hasil analisis kepribadian
  var kepribadian;
  //var untuk menampung tipe sub-kepribadian berdasarkan input sementara
  var hasil = List(4);
  //method untuk melakukan  set state / refresh
  void stateMethod() {
    setState(() {});
  }

  //instansiasi obj dbHelper
  DbHelper dbHelper = DbHelper();

  var analisis;

  Future<void> display() async {
    analisis = '';
    //iterasi untuk menginputkan sub-kepribadian menjadi suatu jenis kepribadian
    for (int i = 0; i < hasil.length; i++) analisis += hasil[i];
    //melalukan select untuk mencari tipe kepribadian yang sesuai pada table di db
    kepribadian = await dbHelper.cari(analisis);
    //instansiasi object partisipan berdasar tipe kepribadian dan nama user
    var partisipan = Partisipan(widget.nama, kepribadian.tipe);
    //proses input data menuju database
    await dbHelper.insert(partisipan);

    Navigator.push(
      context,
      MaterialPageRoute(
        //menuju laman analisis untuk membaca keterangan kepribadian
        builder: (context) => Analisis(kepribadian: kepribadian),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff4a1c40),
        appBar: AppBar(
          leading: BackButton(
            color: Colors.white,
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text("Psychotest"),
          backgroundColor: const Color(0xfff21170),
        ),
        body: ListView(children: [
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(5),
            child: Text(
              'Halo ' + widget.nama,
              style: TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          DaftarPertanyaan(score: _score, hasil: hasil, stateMethod: stateMethod),
          Kalkulasi(display: display),
        ]),
      ),
    );
  }
}
