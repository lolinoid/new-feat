import 'package:flutter/material.dart';

class ImgHomeBgWidget extends StatelessWidget {
  final String imgaset;

  const ImgHomeBgWidget({Key key, this.imgaset}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imgaset,
      fit: BoxFit.fitWidth,
      width: double.infinity,
    );
  }
}
