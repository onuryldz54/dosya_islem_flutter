import 'package:flutter/material.dart';
import 'package:odev_4/sayfa_a.dart';
import 'package:odev_4/sayfa_x.dart';
import 'package:odev_4/sayfa_y.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> with WidgetsBindingObserver {
  int sayac = 0;
  @override
  void initState() {
    super.initState();
    print("initState çalıştı"); //Sayfa ilk yüklenirken bir kere çalışır
    WidgetsBinding.instance.addObserver(this);
  }
  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }
  @override
  Widget build(BuildContext context) {
    print("build çalıştı");
    return Scaffold(
      appBar: AppBar(title: const Text("Anasayfa"),),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SayfaA()));
            }, child: const Text("Sayfa A")),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SayfaX()));
            }, child: const Text("Sayfa X")),
          ],
        ),
      ),
    );
  }
}
