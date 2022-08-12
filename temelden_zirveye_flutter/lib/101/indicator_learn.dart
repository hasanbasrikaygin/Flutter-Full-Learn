import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [_CenterCircularRedProgress()],
      ),
      body: Column(
        children: const [
          Center(
            child: _CenterCircularRedProgress(), //Circular
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: LinearProgressIndicator(), //Linear
          ),
        ],
      ),
    );
  }
}

class _CenterCircularRedProgress extends StatelessWidget {
  const _CenterCircularRedProgress({
    Key? key,
  }) : super(key: key);
  final Color redColor = Colors.red;
  final Color whiteColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: redColor,
        strokeWidth: 10, //kalinlik
        //value: 0.9,//durdurma
        backgroundColor: whiteColor, //kalan kısım
      ),
    );
  }
}
