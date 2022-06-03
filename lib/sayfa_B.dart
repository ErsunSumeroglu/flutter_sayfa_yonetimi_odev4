import 'package:flutter/material.dart';
import 'package:flutter_sayfa_yonetimi_odev4/sayfa_Y.dart';

class sayfa_B extends StatefulWidget {
  const sayfa_B({Key? key}) : super(key: key);

  @override
  State<sayfa_B> createState() => _sayfa_BState();
}

class _sayfa_BState extends State<sayfa_B> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sayfa B"),centerTitle: true,),
      body: Container(color: Colors.black,child: Center(child: Column(
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
