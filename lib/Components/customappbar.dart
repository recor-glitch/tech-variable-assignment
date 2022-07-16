import 'package:flutter/material.dart';
import 'package:techdemo/Screens/MainPage/Components/profile_pic.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.add, required this.title})
      : super(key: key);
  final Widget title;
  final bool add;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomProfile(),
            title,
            add
                ? SizedBox(
                    width: MediaQuery.of(context).size.width * 0.1,
                    child: ShaderMask(
                        shaderCallback: (bounds) => LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                              colors: [
                                Color.fromRGBO(19, 63, 219, 0.5),
                                Color.fromRGBO(183, 0, 77, 0.5)
                              ],
                              tileMode: TileMode.mirror,
                            ).createShader(bounds),
                        child: IconButton(
                            icon: Icon(Icons.add, color: Colors.white, size: 30),
                            onPressed: () {})))
                : SizedBox(width: MediaQuery.of(context).size.width * 0.1)
          ],
        ),
      ),
    );
  }
}
