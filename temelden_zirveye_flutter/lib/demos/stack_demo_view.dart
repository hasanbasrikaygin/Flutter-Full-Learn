import 'package:flutter/material.dart';
import 'package:temelden_zirveye_flutter/core/random_image.dart';

class StackDemoView extends StatelessWidget {
  const StackDemoView({Key? key}) : super(key: key);
  final _cardHeight = 50.0;
  final _cardWidth = 200.0;
  final _cardBottom = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Expanded(
            flex: 4,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(//tum ekrani kapla
                  child: RandomImage(),
                  bottom: _cardHeight / 2,
                ), 
                Positioned(
                  width: _cardWidth,
                  bottom: _cardBottom,
                  height: _cardHeight,
                  child: _cardCustom(),
                )
              ],
            )),
        const Spacer(
          flex: 6,
        )
      ]),
    );
  }

  Card _cardCustom() {
    return const Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(), //koseleri keskin
    );
  }
}
