import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NavigateDetailLearn extends StatefulWidget {
  const NavigateDetailLearn({Key? key,  this.isOkey = false}) : super(key: key);
  final bool isOkey;
  @override
  State<NavigateDetailLearn> createState() => _NavigateDetailLearnState();
}

class _NavigateDetailLearnState extends State<NavigateDetailLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton.icon(onPressed: (){
          Navigator.of(context).pop(!widget.isOkey);
        }, 
        icon: Icon(Icons.check , color: widget.isOkey? Colors.red : Colors.green),
        label:widget.isOkey? const Text('ret') : const Text('onayla'),
        ),
      ),
    );
  }
}