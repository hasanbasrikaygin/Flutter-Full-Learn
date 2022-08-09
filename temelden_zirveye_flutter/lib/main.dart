import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:temelden_zirveye_flutter/101/app_bar_learn.dart';
import 'package:temelden_zirveye_flutter/101/button_learn.dart';
import 'package:temelden_zirveye_flutter/101/scaffold_learn.dart';
import 'package:temelden_zirveye_flutter/101/text_learn_view.dart';
import '101/color_learn.dart';
import '101/container_sizedbox_learn.dart';
import '101/icon_learn.dart';

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
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          backgroundColor: Colors.transparent,
          elevation: 0,
        )
      ),
      home: ColorLearn(),
      
      //IconLearnView(),
      //AppBarLearnView(),
      // ButtonLearn(), 
      //ScaffoldLearnView(),
      // TextLearnView()
      //ContainerSizedboxLearn(),
    );
  }
}
