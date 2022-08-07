import 'package:flutter/material.dart';
import 'package:temelden_zirveye_flutter/101/container_sizedbox_learn.dart';
import 'package:temelden_zirveye_flutter/101/text_learn_view.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scaffold Samples"),
      ),
      body: const Text("BODY"),
      backgroundColor: Colors.indigoAccent,
      floatingActionButton: FloatingActionButton(onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (context) => Container(
                  child: const Text("showModalBottomSheet"),
                  height: 200,
                ));
      }),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked, //buton konumu
      drawer: const Drawer(),
      bottomNavigationBar: Container(
        decoration: ProjectDecorationContainer(),
        child: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: "A"),
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: "B")
        ]),
      ),
    );
  }
}
