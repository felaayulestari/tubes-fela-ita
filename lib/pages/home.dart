import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psychotest_felaita/pages/daftarKepribadian.dart';
import 'package:psychotest_felaita/pages/inputNama.dart';
import 'package:psychotest_felaita/pages/rekap.dart';

class Home extends StatelessWidget {
  void mulaiTest() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff4a1c40),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(30),
              child: Text(
                'Psychotest',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white, fontSize: 30
                  ),
              ),
            ),
            //button untuk memulai test
            Container(
              margin: EdgeInsets.only(top: 10),
              child: SizedBox(
                width: 300,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xfff21170),
                    padding: EdgeInsets.symmetric(vertical: 15),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(15.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        //menujy page InputNama
                        builder: (context) => InputNama(),
                      ),
                    );
                  },
                  child: Text(
                    'Mulai',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
            Divider(),
            //button untuk melihat daftar kepribadian
            Container(
              child: SizedBox(
                width: 300,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xfff21170),
                    padding: EdgeInsets.symmetric(vertical: 15),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(15.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        //menuju page DaftarKepribadian
                        builder: (context) => DaftarKepribadian(),
                      ),
                    );
                  },
                  child: Text(
                    'List Kepribadian',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
            Divider(),
            Divider(),
            Divider(),
            //button untuk melihat daftar inputan
            Container(
              child: SizedBox(
                width: 150,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xfff21170),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(15.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        //menuju page rekap
                        builder: (context) => Rekap(),
                      ),
                    );
                  },
                  child: Text(
                    'Lihat User',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
