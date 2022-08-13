import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:temelden_zirveye_flutter/product/language/language_items.dart';

class TextFieldLearn extends StatefulWidget {
  TextFieldLearn({Key? key}) : super(key: key);

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  FocusNode focusNodeTextFinalOne = FocusNode();
  FocusNode focusNodeTextFinalTwo = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            maxLength: 10,
            buildCounter: (BuildContext context, {int? currentLength, bool? isFocused, int? maxLength}) {
              return _animatedContainer(currentLength);
            },
            keyboardType: TextInputType.emailAddress, //emial'e uygun klavye acar
            autofillHints: const [AutofillHints.email], //otomatik tamamlama
            focusNode: focusNodeTextFinalOne,
            textInputAction: TextInputAction.next,
            inputFormatters: [
              TextPrpjectInputFormater()._formatter,
            ],
            decoration: _InputDecorator().emailInput,
          ),
          TextField(
            focusNode: focusNodeTextFinalTwo,
          )
        ],
      ),
    );
  }

  AnimatedContainer _animatedContainer(int? currentLength) {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      height: 10,
      width: (currentLength?.toDouble() ?? 1) * 40,
      color: Colors.red[100 * ((currentLength ?? 0) ~/ 2)],
    );
  }
}

class TextPrpjectInputFormater {
  final _formatter = TextInputFormatter.withFunction((oldValue, newValue) {
    if (newValue.text.contains('a') ) {
      return oldValue;
    }
      return newValue;
  });
}

class _InputDecorator {
  final emailInput = const InputDecoration(
    prefixIcon: Icon(Icons.mail), //mail iconu
    border: OutlineInputBorder(), //kutu icerisinde olmasini saglar
    hintText: LanguageItems.hintTextTitle,
    labelText: LanguageItems.labelTextTitle,
    fillColor: Colors.white24, //backgroundcolor
    filled: true, //backgroundcolor'ın gosterilebilmesi icin
  );
}
