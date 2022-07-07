import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomProfile extends StatelessWidget {
  const CustomProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.purple,
        shape: BoxShape.circle
      ),
      child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: CircleAvatar(
            maxRadius: 30,
            backgroundImage: CachedNetworkImageProvider(
                'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
          )),
    );
  }
}
