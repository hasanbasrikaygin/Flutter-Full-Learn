import 'package:flutter/material.dart';
// stack üst üste binme
class StackLearn extends StatelessWidget {
  const StackLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(
            color: Colors.red,
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: Container(
              color: Colors.blue,
              height: 100,
            ),
          ),
          //Oncelige gore kodlanma sırasi onemli
          Positioned(
          // right: 0,
          // left: 0,
          // top: 20,
            bottom: 0,
            width: 25,
            height: 100,
            child: 
          Container( color: Colors.green,),),
          Positioned.fill(
            top: 100,
            child: Container( color: Colors.purple,),)
          
        ],
      ) ,
    );
  }
}