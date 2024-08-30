import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class NewShoes extends StatelessWidget {
  const NewShoes({
    super.key, required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
                color: Colors.white,
                spreadRadius: 1,
                blurRadius: 0.8,
                offset: Offset(0, 1))
          ],
      image: DecorationImage(image: CachedNetworkImageProvider(imageUrl),fit: BoxFit.cover)),
      height: MediaQuery.of(context).size.height * 0.12,
      width: MediaQuery.of(context).size.width * 0.35,
      // child: CachedNetworkImage(
      //   imageUrl: imageUrl,
      //   fit: BoxFit.cover,
      // ),
    );
  }
}
