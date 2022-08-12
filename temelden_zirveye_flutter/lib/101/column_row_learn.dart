import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          //4+2+2+200
          Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(
                      //belirlenen alani esit alana boler
                      child: Container(
                    color: Colors.red,
                  )),
                  Expanded(
                      child: Container(
                    color: Colors.white,
                  )),
                  Expanded(
                      child: Container(
                    color: Colors.blue,
                  )),
                  Expanded(
                      child: Container(
                    color: Colors.yellowAccent,
                  )),
                ],
              )),
          const Spacer(
            //bosluk
            flex: 2,
          ),
          Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceEvenly, //aralarinda bosluk birak
                crossAxisAlignment: CrossAxisAlignment.center, //ortala
                // mainAxisSize: MainAxisSize.min,//aralarindaki boslugu kaldir
                children: const [
                  Text('a'),
                  Text('b'),
                  Text('c'),
                ],
              )),
          SizedBox(
            height: ProjectContainerSizes.cardHeight,
            child: Column(
              children: const [
                Expanded(child: Text('data 1')),
                Expanded(child: Text('data 2')),
                Expanded(child: Text('data 3')),
                Spacer(), //bosluk
                Expanded(child: Text('data 4')),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProjectContainerSizes {
  static const double cardHeight = 200;
}
