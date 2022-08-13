import 'package:flutter/material.dart';
import 'package:temelden_zirveye_flutter/101/icon_learn.dart';
import 'package:temelden_zirveye_flutter/101/image_learn.dart';
import 'package:temelden_zirveye_flutter/101/stack_learn.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({Key? key}) : super(key: key);

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController(viewportFraction: 0.9);
  int _currentPageIndex = 0;
  void _updatePageIndex(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        //mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Text('Page Number : $_currentPageIndex.toString()'),
          ),
          const Spacer(),
          FloatingActionButton(
              onPressed: () {
                _pageController.previousPage(
                    duration: _durationUtility._durationLow, //sure
                    curve: Curves.slowMiddle);
              },
              child: const Icon(Icons.chevron_left)),
          FloatingActionButton(
              onPressed: () {
                _pageController.nextPage(
                    //setState islemini kendisi yapiyor
                    duration: _durationUtility._durationLow, //sure
                    curve: Curves.slowMiddle);
              },
              child: const Icon(Icons.chevron_right)),
        ],
      ),
      appBar: AppBar(),
      body: PageView(
        //kaydirilabilir
        padEnds: false, //baslangic konumu
        onPageChanged: _updatePageIndex,
        controller: _pageController, // diger sayfa onizlemeside gorunur
        children: [
          const ImageLearn(),
          IconLearnView(),
          const StackLearn(),
        ],
      ),
    );
  }
}

class _durationUtility {
  static const _durationLow = Duration(seconds: 1);
}
