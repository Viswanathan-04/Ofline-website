import 'package:flutter/material.dart';


class ImagePlacehoider extends StatelessWidget {
  final String? imagePath;
  
  const ImagePlacehoider({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Image.network(imagePath!,
      width: double.infinity,
      fit: BoxFit.cover,

    );
  }
}
