import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  final String name = "basri";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TitleTextWidget(
            text: name,
          ),
          EmptyBox(),
          TitleTextWidget(
            text: name,
          ),
          EmptyBox(),
          TitleTextWidget(
            text: name,
          ),
          EmptyBox(), //basit işlerde statelesswidget yerine method olarak kullanılabilir
          const _CustomContainer(),
        ],
      ),
    );
  }

  SizedBox EmptyBox() => const SizedBox(
        height: 20,
      );

  //basit işlerde method olarak kullanılabilir
}

class _CustomContainer extends StatelessWidget {
  //_CustomContainer => "_" private anlami verir =>private sayfaya özel , sadece bu dosyadan erişilebilir
  const _CustomContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.red),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({Key? key, required this.text})
      : super(key: key); //null gelebilir için => this.text
  final String text;
  //final String text; //null gelebilir
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline2,
    );
  }
}
