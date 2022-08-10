import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            width: 300,
            child: PngImage(name: ImageItems().imagesApple2),
          ),
          Image.network(
            ImageItems().imagePath,
            height: 300,
            width: 400,
            errorBuilder: (context, error, stackTrace) => PngImage(
                name: ImageItems()
                    .imagesApple2), //resim yüklenmesinde bir hata oluşacak olursa
          )
        ],
      ),
    );
  }
}

class ImageItems {
  final String appleWithBook =
      "assets/apple-and-book-png-transparent-apple-and-book-images-274565.png";
  final String imagesApple = "assets/png/images_apple.png";
  final String imagesApple2 = "images_apple";
  final String imagePath =
      "https://cdn.pixabay.com/photo/2019/03/12/01/41/books-4049868_1280.png";
}

class PngImage extends StatelessWidget {
  const PngImage({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _nameWithPath,
      fit: BoxFit.contain,
    );
  }

  String get _nameWithPath => 'assets/png/$name.png';
}
