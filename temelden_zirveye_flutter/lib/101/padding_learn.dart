import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({Key? key}) : super(key: key);
//padding: iki component arasi boşluk vermeyi sağlar
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: ProjectPadding
            .pagePaddingVertical, //tüm componentlere ortak padding vermek için
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
// defaultta bulunan paddingi silmek için => EdgeInsets.zero
// her tarafindan padding vermek için => EdgeInsets.all()
              child: Container(
                color: Colors.white,
                height: 50,
              ), //container kendi içerisindede padding özelliği taşır
            ),
            //const SizedBox(height: 10,), //dogru bir kullanim degil
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Container(
                color: Colors.blue,
                height: 50,
              ),
            ),
            Padding(
              padding: ProjectPadding.pagePaddingLeftOnly +
                  ProjectPadding.pagePaddingVertical,
              child: Text("basri"),
            ),
          ],
        ),
      ),
    );
  }
}

// Kullanilmasi gerekn yontem
class ProjectPadding {
  static const pagePaddingVertical = EdgeInsets.symmetric(horizontal: 30);
  static const pagePaddingLeftOnly = EdgeInsets.only(left: 200);
}
