import 'package:flutter/material.dart';
import 'package:odev_4/sayfa_b.dart';

class SayfaA extends StatefulWidget {
  const SayfaA({Key? key}) : super(key: key);

  @override
  State<SayfaA> createState() => _SayfaAState();
}

class _SayfaAState extends State<SayfaA> {
  Future<bool> geriDonusTusu(BuildContext context) async{
    print("Navigation geri tuşu tıklandı");
    return true;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sayfa A"),
        leading: IconButton(onPressed: (){
          print("AppBar geri tuşu tıklandı");
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios_new)), //IconButton
      ),
      body: WillPopScope(onWillPop: () => geriDonusTusu(context),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SayfaB()));
            }, child: const Text("Sayfa B'ye git")),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
              }, child: const Text("GERİ DÖN")),
          ],
        ),
      ),
    ),
    );
  }
}
