import 'package:flutter/material.dart';
import 'package:odev_4/sayfa_b.dart';
import 'package:odev_4/sayfa_y.dart';

class SayfaX extends StatefulWidget {
  const SayfaX({Key? key}) : super(key: key);

  @override
  State<SayfaX> createState() => _SayfaXState();
}

class _SayfaXState extends State<SayfaX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sayfa X"),),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SayfaY()));
            }, child: const Text("Sayfa Y'ye git")),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: const Text("GERİ DÖN")),
          ],
        ),
      ),
    );
  }
}
