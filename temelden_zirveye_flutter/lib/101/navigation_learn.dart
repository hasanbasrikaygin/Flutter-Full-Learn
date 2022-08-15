import 'package:flutter/material.dart';
import 'package:temelden_zirveye_flutter/101/image_learn.dart';

import 'navigate_detail_learn.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({Key? key}) : super(key: key);

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn> with NavigatorManager {
  List<int> selectedItems = [];

  void addSelected(int index, bool isAdd) {
    setState(() {
      isAdd ? selectedItems.add(index) : selectedItems.remove(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index) {
        return TextButton(
          onPressed: () async {
            final response = await navigateToWidgetNormal<bool>(
                context,
                NavigateDetailLearn(
                  isOkey: selectedItems.contains(index),
                ));
            if (response is bool) {
              addSelected(index, response);
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Placeholder(
              color: selectedItems.contains(index) ? Colors.green : Colors.red,
            ),
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.navigation_outlined),
          onPressed: () async {
            final response = await navigateToWidget(context, const NavigateDetailLearn());
          }),
    );
  }
}

mixin NavigatorManager {
  navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        //fullscreenDialog: true, //acilis animasyonu degistirir
        settings: RouteSettings()));
  }

  Future<T?> navigateToWidgetNormal<T>(BuildContext context, Widget widget) {
    return Navigator.of(context).push<T>(
      MaterialPageRoute(
          builder: (context) {
            return widget;
          },
          //fullscreenDialog: true, //acilis animasyonu degistirir
          settings: RouteSettings()),
    );
  }
}
