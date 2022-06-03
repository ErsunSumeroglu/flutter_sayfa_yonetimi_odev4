import 'package:flutter/material.dart';
import 'package:flutter_sayfa_yonetimi_odev4/sayfa_Y.dart';

class sayfa_X extends StatefulWidget {
  const sayfa_X({Key? key}) : super(key: key);

  @override
  State<sayfa_X> createState() => _sayfa_XState();
}

class _sayfa_XState extends State<sayfa_X> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sayfa X"),centerTitle: true),
      body: Container(color: Colors.grey,child: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => sayfa_Y()),
              );
            },
            child: Container(
              color: Colors.purple,
              height: 70,
              width: 200,
              child: Center(
                  child: const Text(
                    "GİT > Y",
                    style: TextStyle(fontSize: 30,color: Colors.white),
                  )),
            ),
          ),
        ],),),),
    );
  }
}
