import 'package:flutter/material.dart';
import 'package:flutter_sayfa_yonetimi_odev4/anaSayfa.dart';

class sayfa_Y extends StatefulWidget {
  const sayfa_Y({Key? key}) : super(key: key);

  @override
  State<sayfa_Y> createState() => _sayfa_YState();
}

class _sayfa_YState extends State<sayfa_Y> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sayfa Y"),centerTitle: true,),
      body: Container( color: Colors.amber,child: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
            },
            child: Container(
              color: Colors.purple,
              height: 70,
              width: 200,
              child: Center(
                  child: const Text(
                    "GERİ GİT",
                    style: TextStyle(fontSize: 30,color: Colors.white),
                  )),
            ),
          ),
        ],),),),
    );
  }
}
