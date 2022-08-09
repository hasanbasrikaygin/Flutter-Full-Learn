import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
   IconLearnView({Key? key}) : super(key: key);
  final IconSize iconSize = IconSize();
  final IconColors iconColors = IconColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("welcome"),
      ),
      body: Column(
        children: [
          IconButton(
            onPressed: (){}, 
            icon:  Icon(
              Icons.message_outlined,
              color: iconColors.froly,
              size: iconSize.iconSmall,
              //IconSize().iconSmall,
              
              ),),
              IconButton(
            onPressed: (){}, 
            icon:  Icon(
              Icons.message_outlined,
              color:Theme.of(context).backgroundColor,
              // temayi dark ile ligth yapinca rengi otomatik degistirir
              size: IconSize.iconSmall2x,           
              ),),
          
        ],
      ),
    );
  }
}
class IconSize{
  final double iconSmall = 40;
  static const double iconSmall2x = 80;
} 
class IconColors{
  final Color froly = const Color(0xFFED617A);
}