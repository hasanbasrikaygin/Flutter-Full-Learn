import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
// 1 -TextButton
          TextButton(
            onPressed: () {},
            child: Text("TextButton",
                style: Theme.of(context).textTheme.subtitle1),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.blueAccent;
              }
              return Colors.green;
              //normalde yesil ,tiklanildiginda mavi renk
            })),
          ),
//2- ElevatedButton
          const ElevatedButton(
              onPressed: null,
              child: Text(
                  "ElevatedButton")), //background color ozellikli- null tiklanamz hale getirir
//3- IconButton
          IconButton(
              onPressed: () {
                //yapilacak islemler
              },
              icon: const Icon(Icons.abc_outlined)),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
//4- OutlinedButton
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.red,
                //shape: CircleBorder(),
                padding: const EdgeInsets.all(10),
              ),
              onPressed: () {},
              child: const Text("OutlinedButton")), //border radiuslu alan verir
//5- OutlinedButton.icon
          OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.abc_sharp),
            label: const Text("OutlinedButton.icon"),
          ),
//6- InkWell
          InkWell(
              onTap: () {},
              child: const Text(
                  "InkWell")), //paddingsiz - ontap disinda farkli tiklama ozelliklerede sahip
          Container(
            height: 50,
            color: Colors.white,
            
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, right: 40, left: 40),
                child: Text(
                  'Place Bid',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
//Borders:
//CircleBorder(), RoundedRectangleBorder(),