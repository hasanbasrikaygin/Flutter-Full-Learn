import 'package:flutter/material.dart';

class ContainerSizedboxLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 300,
            height: 100,
            child: Text('A' * 100),
          ),
          const SizedBox.shrink(), //ekranda bos alan
          SizedBox.square(
            dimension: 50,
            child: Text('B' * 500),
          ),
          Container(
            width: 300,
            height: 50,

            constraints: const BoxConstraints(
              maxWidth: 400,
              minWidth: 200,
              maxHeight: 300,
              minHeight: 100,
            ), // boyut degerleri max min ne kadar olabilir
            child: Text("+" * 50),
            padding: const EdgeInsets.all(10), //iceriden bosluk
            margin: const EdgeInsets.all(10), //disaridan bosluk
            decoration: ProjectUtility.boxDecoration,
          ),
        ],
      ),
    );
  }
}

//Yontem 1
class ProjectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(15), //koseleri yuvarlaklatma
      gradient: const LinearGradient(
          colors: [Colors.black, Colors.blue]), //siyahtan maviye renk gecisi
      boxShadow: const [
        BoxShadow(
          color: Colors.amberAccent,
          offset: Offset(10, 20), //golge boyutlandirma
          blurRadius: 12, //blurluk
        )
      ],
      //shape: BoxShape.circle,//yuvarlaklik
      border: Border.all(width: 10, color: Colors.greenAccent));
}

//Yontem 2
class ProjectDecorationContainer extends BoxDecoration {
  ProjectDecorationContainer()
      : super(
            borderRadius: BorderRadius.circular(15), //koseleri yuvarlaklatma
            gradient: const LinearGradient(colors: [
              Colors.black,
              Colors.blue
            ]), //siyahtan maviye renk gecisi
            boxShadow: const [
              BoxShadow(
                color: Colors.amberAccent,
                offset: Offset(10, 20), //golge boyutlandirma
                blurRadius: 12, //blurluk
              )
            ],
            //shape: BoxShape.circle,//yuvarlaklik
            border: Border.all(width: 10, color: Colors.greenAccent));
}
