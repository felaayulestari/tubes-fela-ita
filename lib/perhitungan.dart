import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Kalkulasi extends StatelessWidget {
  final Function display;
  final analisis;

  const Kalkulasi({Key key, this.display, this.analisis}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: display,
        style: ElevatedButton.styleFrom(
          primary: const Color(0xfff21170),
          padding: EdgeInsets.symmetric(vertical: 20),
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(15.0),
          ),
        ),
        child: Text(
          'Cek Hasil',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
