import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:temelden_zirveye_flutter/101/app_bar_learn.dart';
import 'package:temelden_zirveye_flutter/101/button_learn.dart';
import 'package:temelden_zirveye_flutter/101/card_learn.dart';
import 'package:temelden_zirveye_flutter/101/padding_learn.dart';
import 'package:temelden_zirveye_flutter/101/scaffold_learn.dart';
import 'package:temelden_zirveye_flutter/101/statefull_learn.dart';
import 'package:temelden_zirveye_flutter/101/stateless_learn.dart';
import 'package:temelden_zirveye_flutter/101/text_learn_view.dart';
import '101/color_learn.dart';
import '101/column_row_learn.dart';
import '101/container_sizedbox_learn.dart';
import '101/custom_widget_learn.dart';
import '101/icon_learn.dart';
import '101/image_learn.dart';
import '101/indicator_learn.dart';
import '101/list_tile_learn.dart';
import '101/list_view_builder_learn.dart';
import '101/list_view_learn.dart';
import '101/navigation_learn.dart';
import '101/page_view_learn.dart';
import '101/stack_learn.dart';
import '101/statefull_life_cycle_learn.dart';
import '101/text_field_learn.dart';
import '202/model_view_learn.dart';
import '202/tab_learn.dart';
import 'demos/color_demos_view.dart';
import 'demos/color_life_cycle_demos_view.dart';
import 'demos/my_collections.dart';
import 'demos/note_demos_view.dart';
import 'demos/stack_demo_view.dart';

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
          inputDecorationTheme: const InputDecorationTheme(
            filled: true,
            fillColor: Colors.white24,
            iconColor: Colors.orange,
            border: OutlineInputBorder(),
          ),
          progressIndicatorTheme: const ProgressIndicatorThemeData(
            //eger tum uygulamaya ortak olarak verilecekse renk buradan ayarlan??r
            color: Colors.white,
          ),
          errorColor: ColorItems.sulu,
          listTileTheme:
              const ListTileThemeData(contentPadding: EdgeInsets.zero), //butun ListTile'lar sifir paddingili olusur
          cardTheme: CardTheme(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
          //b??t??n card tasar??mlar?? bu ??zelli??e sahip olacakt??r
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            backgroundColor: Colors.transparent,
            elevation: 0,
          )),
      home: ModelLearnView(),
      //TabeLearn(),
      //NavigationLearn(),
      //  MyCollectionsDemos(),
      //  ListViewBuilderLearn(), 
      //  ListViewLearn(),
      //  ColorLifeCycleView(), 
      //  ColorDemos(), 
      //  TextFieldLearn(),
      //  StatefullLifeCycleLearn(message: 'Basrika'),
      //  PageViewLearn(),
      //  StatefullLearn(),
      //  StackDemoView(),
      //  StackLearn(),
      //  ColumnRowLearn(),
      //  ListTileLearn(),
      //  IndicatorLearn(),
      //  CustomWidget(),
      //  NoteDemos(),
      //  ImageLearn(),
      //  CardLearn(),
      //  PaddingLearn(),
      //  StatelessLearn(),
      //  ColorLearn(),
      //  IconLearnView(),
      //  AppBarLearnView(),
      //  ButtonLearn(),
      //  ScaffoldLearnView(),
      //  TextLearnView()
      //  ContainerSizedboxLearn(),
    );
  }
}
