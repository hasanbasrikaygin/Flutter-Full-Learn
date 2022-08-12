import 'package:flutter/material.dart';
import 'package:temelden_zirveye_flutter/core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                onTap: () {}, //tiklama ozelligi
                title: const RandomImage(
                  height: 300,
                ),
                //dense: true,//componenleri olabildigince sikistirmamizi saglar
                //contentPadding: EdgeInsets.zero,//paddingi sifirlar
                subtitle: const Text('How do you use your card'),
                leading: Container(
                    height: 150,
                    width: 50,
                    alignment: Alignment.bottomCenter,
                    color: Colors.blue,
                    child: Icon(Icons.money)),
                trailing: Container(
                    width: 20,
                    color: Colors.red,
                    child:
                        const Icon(Icons.chevron_right)), //navigation için icon
              ),
            ),
          ),
        ],
      ),
    );
  }
}
