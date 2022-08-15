import 'package:flutter/material.dart';

class MyCollectionsDemos extends StatefulWidget {
  const MyCollectionsDemos({Key? key}) : super(key: key);

  @override
  State<MyCollectionsDemos> createState() => _MyCollectionsDemosState();
}

class _MyCollectionsDemosState extends State<MyCollectionsDemos> {
  late final List<CollectionModel> _items;

  @override
  void initState() {
    super.initState();
    _items = CollectionItems().items;
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: PaddingUtility().paddingSynmetricHorizontal,
        child: ListView.builder(
          itemCount: _items.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: PaddingUtility().paddingOnlyTop20,
              child: _CategoryCard(model: _items[index]),
            );
          },
        ),
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    Key? key,
    required CollectionModel model,
  })  : _model = model,
        super(key: key);

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: PaddingUtility().paddingAll,
          child: Column(
            children: [
              Expanded(child: Image.asset(_model.imagePath)),
              Padding(
                padding: PaddingUtility().paddingOnlyTop10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(_model.title),
                    Text('${_model.price} eth'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel({required this.imagePath, required this.title, required this.price});
}
class CollectionItems{
    late final List<CollectionModel> items;
CollectionItems(){

  items = [
      CollectionModel(imagePath: ProjectImage.imageCollection, title: 'Abstract Art 1', price: 3.4),
      CollectionModel(imagePath: ProjectImage.imageCollection, title: 'Abstract Art 2', price: 3.4),
      CollectionModel(imagePath: ProjectImage.imageCollection, title: 'Abstract Art 3', price: 3.4),
      CollectionModel(imagePath: ProjectImage.imageCollection, title: 'Abstract Art 4', price: 3.4)
    ];
}
}
class PaddingUtility {
  final paddingAll = const EdgeInsets.all(20.0);
  final paddingOnlyTop20 = const EdgeInsets.only(top: 20);
  final paddingOnlyTop10 = const EdgeInsets.only(top: 10);
  final paddingSynmetricHorizontal = const EdgeInsets.symmetric(horizontal: 20);
}

class ProjectImage{
  static const imageCollection = 'assets/png/image_collection.png';
}