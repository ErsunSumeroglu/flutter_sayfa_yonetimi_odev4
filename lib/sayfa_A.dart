import 'package:flutter/material.dart';
import 'package:flutter_sayfa_yonetimi_odev4/sayfa_B.dart';

class sayfa_A extends StatefulWidget {
  const sayfa_A({Key? key}) : super(key: key);

  @override
  State<sayfa_A> createState() => _sayfa_AState();
}

class _sayfa_AState extends State<sayfa_A> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sayfa A"),centerTitle: true),
      body: Container(
        color: Colors.orange,
        child: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => sayfa_B()),
                );
              },
              child: Container(
                color: Colors.purple,
                height: 70,
                width: 200,
                child: Center(
                    child: const Text(
                      "GİT > B",
                      style: TextStyle(fontSize: 30,color: Colors.white),
                    )),
              ),
            ),
        ],),),
      ),
    );
  }
}
