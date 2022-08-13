import 'package:flutter/material.dart';
import 'package:temelden_zirveye_flutter/product/language/language_items.dart';
import '../product/counter_hello_button.dart';

class StatefullLearn extends StatefulWidget {
  // degismez component , sadece disaridan parametre alir
  // disarisi ile haberlesme , stateless gibi calisir
  StatefullLearn({Key? key}) : super(key: key);

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  //degisiklikler bu class'ta olur

  int _countValue = 0;

  // void incrementValue(){
  //   setState(() {
  //     // setState build methodu tekrar tetiklenir
  //     // tetiklenme sonucu value degeri son degerini alir
  //   _countValue++;
  //   });
  // }
  // void deincrementValue(){
  //   setState(() {
  //     _countValue--;
  //   });
  // }

  void _updateCounter(bool isIncrement) {
    if (isIncrement) {
      _countValue += 1;
    } else {
      _countValue -= 1;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LanguageItems.welcomeTitle ),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _incrementButton(),
          _deincrementButton(),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              _countValue.toString(),
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          CounterHelloButton(),
        ],
      ),
    );
  }

  FloatingActionButton _incrementButton() {
    print("test");
    return FloatingActionButton(
      onPressed: () {
        // incrementValue();
        _updateCounter(true);
      },
      child: const Icon(Icons.add),
    );
  }

  Padding _deincrementButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: FloatingActionButton(
        onPressed: () {
          // _updateCounter();
          _updateCounter(false);
        },
        child: const Icon(Icons.remove),
      ),
    );
  }
}
