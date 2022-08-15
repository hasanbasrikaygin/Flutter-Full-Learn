import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({Key? key}) : super(key: key);

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          FittedBox(//tek satira sigdirma
            child: Text('Welcome',style: Theme.of(context).textTheme.headline1,
            maxLines: 1,// 1 satirlik alan kaplasin
            
            ),
          ),
          Container(
            height: 300,
            color: Colors.red,
          ),
          const Divider(),//cizgi koyma
          SizedBox(
            height: 300,
            child: ListView(
              padding: EdgeInsets.zero,//kendi paddinge sahiptir bunu kaldirabiliriz
              scrollDirection: Axis.horizontal,//yatayda ListView
              children: [
                Container(
              width: 300,
              color: Colors.green,
            ),
            Container(
              width: 300,
              color: Colors.white,
            ),
            Container(
              width: 300,
              color: Colors.green,
            ),
            Container(
              width: 300,
              color: Colors.white,
            ),
              ],
            ),
          ),
          
          IconButton(onPressed: (){}, icon: const Icon(Icons.add)),
            const _ListDemo(),
        ],
      ),
    );
  }
}
class _ListDemo extends StatefulWidget {
  const _ListDemo({Key? key}) : super(key: key);

  @override
  State<_ListDemo> createState() => __ListDemoState();
  
}

class __ListDemoState extends State<_ListDemo> {
  @override
  void initState() {
    super.initState();
    print('test');
  }
  @override
  void dispose() {
    super.dispose();
    print('exit');
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}