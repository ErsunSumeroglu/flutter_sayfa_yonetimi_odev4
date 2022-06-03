import 'package:flutter/material.dart';
import 'package:flutter_sayfa_yonetimi_odev4/sayfa_A.dart';
import 'package:flutter_sayfa_yonetimi_odev4/sayfa_X.dart';

class anaSayfa extends StatefulWidget {
  const anaSayfa({Key? key}) : super(key: key);

  @override
  State<anaSayfa> createState() => _anaSayfaState();
}

class _anaSayfaState extends State<anaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Anasayfa"),centerTitle: true),
        body: Container(
          color: Colors.indigo,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => sayfa_A()),
                    );
                  },
                  child: Container(
                    color: Colors.purple,
                    height: 70,
                    width: 200,
                    child: Center(
                        child: const Text(
                      "GİT > A",
                      style: TextStyle(fontSize: 30,color: Colors.white),
                    )),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => sayfa_X()),
                    );
                  },
                  child: Container(
                    color: Colors.purple,
                    height: 70,
                    width: 200,
                    child: Center(
                        child: const Text(
                      "GİT > X",
                      style: TextStyle(fontSize: 30,color: Colors.white),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
