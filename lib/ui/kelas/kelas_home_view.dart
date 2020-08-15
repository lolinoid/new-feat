import 'package:flutter/material.dart';
import 'package:newfeat/ui/core/img_home_bg_widget.dart';

class KelasHomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          ImgHomeBgWidget(
            imgaset: 'images/dua.png',
          ),
          Positioned(
            child: IconButton(
                iconSize: 90,
                icon: Image.asset(
                  'images/online-class.png',
                ),
                onPressed: null),
            left: 50,
            top: 190,
          ),
          Positioned(
            child: IconButton(
                iconSize: 70,
                icon: Image.asset(
                  'images/training.png',
                ),
                onPressed: null),
            right: 70,
            top: 130,
          ),
        ],
      ),
    );
  }
}
