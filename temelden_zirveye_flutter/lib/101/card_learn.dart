import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        _CustomCard(
          child: SizedBox(
            child: Center(child: Text('data')),
            height: 100,
            width: 300,
          ),
        ),
        _CustomCard(
          child: SizedBox(
            child: Center(child: Text('data')),
            height: 100,
            width: 300,
          ),
        ),
      ]),
    );
  }
}

class ProjectMargin {
  static const cardMargin = EdgeInsets.all(10);
}

//Borders
//Stadium() Circular() RoundedRectangleBorder()
class _CustomCard extends StatelessWidget {
  _CustomCard({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.onSecondary,
      margin: ProjectMargin.cardMargin, //padding benzeri
      child: child,
    );
  }
}
