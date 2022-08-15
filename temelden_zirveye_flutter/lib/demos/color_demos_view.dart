//bir ekran olacak
// ekranda 3 buton ve bunlara basınca renk değişimi olacak
//secili buton selected icon olacak
import 'dart:developer';

import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  const ColorDemos({Key? key, required this.initialColor}) : super(key: key);
   final Color? initialColor;
  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
 Color? _backgroundColor;
 @override
  void initState() {
    super.initState();
    _backgroundColor = widget.initialColor ?? Colors.transparent;
  }
 
  @override
  void didUpdateWidget(covariant ColorDemos oldWidget) {
    // color_life_cycle_demos sayfasında icon basıldığında 
    //pink rengini vermek için kullanıyoruz
    super.didUpdateWidget(oldWidget);
    inspect(widget);
    //print(oldWidget.initialColor != _backgroundColor); debug
    if(widget.initialColor != _backgroundColor && widget.initialColor != null )
    //eger eski color background color'a esit degilse ve widgetın initial colorY null degilse ; yeni color'ı color yap
    {
      changeBackgroundColor(widget.initialColor!);
    }
  }
  
  void changeBackgroundColor(Color color){
    setState(() {
      _backgroundColor = color;

    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _colorOnTap,
        items: const [
        BottomNavigationBarItem(
          icon: _ColorContainer(
            color: Colors.red,
          ),
          label: 'red',
        ),
        BottomNavigationBarItem(
          icon: _ColorContainer(
            color: Colors.blue,
          ),
          label: 'blue',
        ),
        BottomNavigationBarItem(
          icon: _ColorContainer(
            color: Colors.purple,
          ),
          label: 'purple',
        )
      ]),
    );
  }

  void _colorOnTap(int value) {
        //print(value); 
        if( value == _MyColors.red.index){
          changeBackgroundColor(Colors.red);
        }
        else if( value == _MyColors.blue.index){
          changeBackgroundColor(Colors.blue);
        }
        else if( value == _MyColors.purple.index){
          changeBackgroundColor(Colors.purple);
        }
      }
}
enum _MyColors{
  red,
  blue,
  purple
}

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({
    Key? key,
    required this.color,
  }) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 20,
      height: 20,
    );
  }
}
