import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomProfile extends StatelessWidget {
  const CustomProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromRGBO(47, 68, 252, 1),
                Color.fromRGBO(248, 48, 180, 1)
              ], begin: Alignment.centerLeft, end: Alignment.centerRight),
              shape: BoxShape.circle),
          child: Container(
            margin: EdgeInsets.all(2),
            decoration:
                const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
            child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: CircleAvatar(
                  maxRadius: 30,
                  backgroundImage: CachedNetworkImageProvider(
                      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
                )),
          ),
        ),
        Positioned(
          right: 5,
          top: 5,
          child: Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(shape: BoxShape.circle, color: Color.fromRGBO(219, 19, 55, 1)),
          ),
        ),
      ],
    );
  }
}
