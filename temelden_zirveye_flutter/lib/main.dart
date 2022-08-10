import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:temelden_zirveye_flutter/101/app_bar_learn.dart';
import 'package:temelden_zirveye_flutter/101/button_learn.dart';
import 'package:temelden_zirveye_flutter/101/card_learn.dart';
import 'package:temelden_zirveye_flutter/101/padding_learn.dart';
import 'package:temelden_zirveye_flutter/101/scaffold_learn.dart';
import 'package:temelden_zirveye_flutter/101/stateless_learn.dart';
import 'package:temelden_zirveye_flutter/101/text_learn_view.dart';
import '101/color_learn.dart';
import '101/container_sizedbox_learn.dart';
import '101/icon_learn.dart';
import '101/image_learn.dart';
import 'demos/note_demos_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          errorColor: ColorItems.sulu,
          cardTheme: CardTheme(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          //bütün card tasarımları bu özelliğe sahip olacaktır
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            backgroundColor: Colors.transparent,
            elevation: 0,
          )),
      home: NoteDemos(),
      //ImageLearn(),
      //CardLearn(),
      //PaddingLearn(),
      //StatelessLearn(),
      //ColorLearn(),
      //IconLearnView(),
      //AppBarLearnView(),
      // ButtonLearn(),
      //ScaffoldLearnView(),
      // TextLearnView()
      //ContainerSizedboxLearn(),
    );
  }
}
