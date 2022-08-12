import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({Key? key}) : super(key: key);
  final String title = 'food';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  width: MediaQuery.of(context)
                      .size
                      .width, //sayfanin with degerini alir
                  child: CustomFoodButton(
                    title: title,
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomFoodButton(
              title: title,
              onPressed: () {} ,
            ),
          ],
        ));
  }
}

class _ColorsUtility {
  //101 seviyesi icin renkleri bu sekilde tanimlamamiz yeterli
  final Color redColor = Colors.red;
  final Color whiteColor = Colors.white;
}

class _PaddingUtility {
  final EdgeInsets defaultPadding = const EdgeInsets.all(8.0);
  final EdgeInsets default2xPadding = const EdgeInsets.all(16.0);
}

class CustomFoodButton extends StatelessWidget
    with _ColorsUtility, _PaddingUtility {
  CustomFoodButton({Key? key, required this.title, required this.onPressed}) : super(key: key);
  final String title; //disaridan gelecek deger
  final VoidCallback onPressed;// final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: redColor,
        shape: StadiumBorder(),
      ),
      child: Padding(
        padding: _PaddingUtility().default2xPadding,
        child: Text(
          title,
          style: Theme.of(context).textTheme.subtitle1?.copyWith(
                color: whiteColor,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
