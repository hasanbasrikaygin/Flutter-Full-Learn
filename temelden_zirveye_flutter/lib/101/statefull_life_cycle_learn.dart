import 'package:flutter/material.dart';

class StatefullLifeCycleLearn extends StatefulWidget {
  const StatefullLifeCycleLearn({Key? key, required this.message}) : super(key: key);

  final String message;

  @override
  State<StatefullLifeCycleLearn> createState() => _StatefullLifeCycleLearnState();
}

class _StatefullLifeCycleLearnState extends State<StatefullLifeCycleLearn> {
  late final bool _isOdd;
  String _message = '';

  @override
  void didChangeDependencies() {
    //drawing isleminden önce initState'ten sonra calisir
    super.didChangeDependencies();
    print('didChangeDependencies');
    //_computeName;
  }

  @override
  void didUpdateWidget(covariant StatefullLifeCycleLearn oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.message != widget.message) {
      _message = widget.message;
      _computeName();
      setState(() {});
      print("didUpdateWidget");
    }
  }

  @override
  void dispose() {
    //sayfadan cikis ani
    super.dispose();
    _message = ''; //mesaji temizle
    print('dispose');
  }

  @override
  void initState() {
    // statefull widgetlar cizilmeye baslamadan once baslayip,
    // cizilmeden biten - initState methodu bittikten sonra build methodu cagirilir
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    _computeName();
    print('initState');
  }

  void _computeName() {
    if (_isOdd)
      _message += 'Tek';
    else
      _message += 'Cift';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_message),
      ),
      body: _isOdd
          ? ElevatedButton(onPressed: () {}, child: Text('kelime tek'))
          : TextButton(onPressed: () {}, child: Text('kelime cift')),
    );
  }
}
