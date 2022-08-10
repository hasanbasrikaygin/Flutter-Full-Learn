import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:temelden_zirveye_flutter/101/image_learn.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({Key? key}) : super(key: key);

  final _title = "Crate your first note";
  final _description = "Add a Note ";
  final _createNote = "Create a Note";
  final _importNotes = "Import Notes";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: PaddingItems.horizontalPading,
        child: Column(
          children: [
            PngImage(name: ImageItems().imagesApple2),
            _TitleWidget(title: _title),
            Padding(
              padding: PaddingItems.veritcalPadding,
              child: _SubTitleWidget(
                description: _description * 10,
              ),
            ),
            const Spacer(),
            _CreateButton(createNote: _createNote),
            TextButton(
                onPressed: () {},
                child: Text(
                  _importNotes,
                )),
            const SizedBox(
              height: ButtonHeight.buttonNormalHeight,
            ),
          ],
        ),
      ),
    );
  }
}

class _CreateButton extends StatelessWidget {
  const _CreateButton({
    Key? key,
    required String createNote,
  })  : _createNote = createNote,
        super(key: key);

  final String _createNote;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: SizedBox(
            height: ButtonHeight.buttonNormalHeight,
            child: Center(
                child: Text(
              _createNote,
              style: Theme.of(context).textTheme.headline5,
            ))));
  }
}

//Center text widget
class _SubTitleWidget extends StatelessWidget {
  const _SubTitleWidget({
    Key? key,
    this.textAlign =
        TextAlign.center, //eger vermezse TextAlign.center olarak kabul et
    required this.description,
  }) : super(key: key);

  final TextAlign? textAlign;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.subtitle1?.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline5?.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w800,
          ),
    );
  }
}

class PaddingItems {
  static const EdgeInsets horizontalPading =
      EdgeInsets.symmetric(horizontal: 50);
  static const EdgeInsets veritcalPadding = EdgeInsets.symmetric(vertical: 20);
}

class ButtonHeight {
  static const double buttonNormalHeight = 50;
}
