import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BusinessCard extends StatelessWidget {
  const BusinessCard({Key? key, required this.url}) : super(key: key);
  final String url;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.3,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
            borderRadius: BorderRadius.circular(10)),
            child: CachedNetworkImage(imageUrl: url, height: 50, width: 50),
      ),
    );
  }
}
