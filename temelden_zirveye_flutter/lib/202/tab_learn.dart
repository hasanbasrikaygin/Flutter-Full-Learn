import 'package:flutter/material.dart';
import 'package:temelden_zirveye_flutter/demos/my_collections.dart';
import 'package:temelden_zirveye_flutter/demos/stack_demo_view.dart';

class TabeLearn extends StatefulWidget {
  TabeLearn({Key? key}) : super(key: key);

  @override
  State<TabeLearn> createState() => _TabeLearnState();
}

class _TabeLearnState extends State<TabeLearn> with TickerProviderStateMixin {
  late final TabController _tabController;
  final double _notchValue = 10;
  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: _MyTabViews.values.length, vsync: this); //this ve TickerProviderStateMixin tabcontrollerı kullanmamizi sagliyor
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _MyTabViews.values.length,
        child: Scaffold(
          extendBody: true, // floatingActionButton arkaplanini acar
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(child: Icon(Icons.compare_arrows),backgroundColor: Colors.deepOrange ,onPressed: () {
            _tabController.animateTo(_MyTabViews.home.index);
            //_tabController.index == 0 ? _tabController.animateTo(1) : _tabController.animateTo(0);
            print(_tabController.index);
          }
              ),
          bottomNavigationBar: BottomAppBar(
            color: Colors.indigo,
            notchMargin: _notchValue, //floatingActionButton arkaplan genisligi
            shape: const CircularNotchedRectangle(), //floatingActionButton arka plani

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: _myTabView()
              
              
            ),
          ),
          appBar: AppBar(
            backgroundColor: Colors.indigo,
            bottom:  _tabBarText(),
          ),
          body: _tabBarView(),
        ));
  }

  TabBar _tabBarText() {
    return TabBar(controller: _tabController,tabs: const [
            Tab(
              text: 'page one',
            ),
            Tab(
              text: 'page two',
            ),
            Tab(
              text: 'page three',
            ),
            Tab(
              text: 'page four',
            )
          ]);
  }

  TabBar _myTabView() {
    return TabBar(
              //physics: NeverScrollableScrollPhysics(), // scroll kapatma
              
              indicatorColor: Colors.red,
              isScrollable: true,//sikistirma
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              controller: _tabController, tabs:  
              _MyTabViews.values.map((e) => Tab(text: '${e.name}')).toList());
  }

  TabBarView _tabBarView() {
    return TabBarView(controller: _tabController, children: const [
          //length'i 2 verirsek  max 2 children verebiliyoruz
          MyCollectionsDemos(),
          StackDemoView(),
          MyCollectionsDemos(),
          StackDemoView(),
        ]);
  }
}

enum _MyTabViews {
  home, settings,profile , favorite
}

extension _MyTabViewExtension on _MyTabViews{

}