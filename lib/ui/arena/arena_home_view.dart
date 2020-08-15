import 'package:flutter/material.dart';
import 'package:newfeat/ui/core/img_home_bg_widget.dart';

class ArenaHomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          ImgHomeBgWidget(
            imgaset: 'images/satu.png',
          ),
          Positioned(
            child: IconButton(
                iconSize: 120,
                icon: Image.asset(
                  'images/vs.png',
                ),
                onPressed: null),
            left: 20,
            top: 70,
          ),
          Positioned(
            child: IconButton(
                iconSize: 70,
                icon: Image.asset(
                  'images/exam.png',
                ),
                onPressed: null),
            left: 170,
            top: 130,
          ),
        ],
      ),
    );
  }
}
