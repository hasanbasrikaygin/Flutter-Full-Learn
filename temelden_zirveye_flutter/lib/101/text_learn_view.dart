import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({Key? key, this.surname}) : super(key: key);
  final String name = 'Basri';
  final String? surname;
  final ProjectKeys keys = ProjectKeys();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //1. Yontem
            Text(
              ('Hello $name ${name.length}'),
              maxLines: 2, //max satir sayisi
              overflow: TextOverflow.ellipsis, //3 nokta
              textAlign: TextAlign.center,
              style: const TextStyle(
                decoration: TextDecoration.underline,
                fontStyle: FontStyle.italic,
                color: Colors.indigo,
                wordSpacing: 2,
                letterSpacing: 2,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            //2. Yontem
            Text(
              ('Welcome $name ${name.length}'),
              maxLines: 2, //max satir sayisi
              overflow: TextOverflow.ellipsis, //3 nokta
              textAlign: TextAlign.center,
              style: ProjectStyles.welcomeTextStyle,
            ),
            //3. Yontem
            Text(
              ('Welcome $name ${name.length}'),
              maxLines: 2, //max satir sayisi
              overflow: TextOverflow.ellipsis, //3 nokta
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline6?.copyWith(
                    color: ProjectColors.welcomeColor,
                  ), //ayni ozellikleri aliyoruz yenilerini set ediyoruz
            ),
            Text(keys.welcome) //onerilen kullanim
            /*
              //Yanlis Kullanim
              Text(
              (surname!),
              ),
              //Dogru Kullanim
              Text(
              (surname ?? ' '),
              ),*/
          ],
        ),
      ),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeTextStyle = const TextStyle(
    decoration: TextDecoration.underline,
    fontStyle: FontStyle.italic,
    color: Colors.indigo,
    wordSpacing: 2,
    letterSpacing: 2,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
}

class ProjectColors {
  static Color welcomeColor = Colors.deepOrange;
}

class ProjectKeys {
  final String welcome = 'merhaba';
}
