import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({Key? key}) : super(key: key);
  final String _title = 'Welcome Learn';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0, //arkaplan sayfayla ayni renk
        systemOverlayStyle: SystemUiOverlayStyle.light, //saat bildirim renleri
        actionsIconTheme: const IconThemeData(color: Colors.blueAccent),
        automaticallyImplyLeading:false, //sayfada otomatik olarak back butonu gelmesin
        leading: const Icon(Icons.chevron_left),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.mark_email_unread_sharp,
            ),
          ),
          // const Center(child: CircularProgressIndicator(),)
        ],
      ),
    );
  }
}
