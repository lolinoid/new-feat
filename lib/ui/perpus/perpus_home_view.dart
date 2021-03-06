import 'package:flutter/material.dart';
import 'package:newfeat/ui/core/img_home_bg_widget.dart';

class PerpusHomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          ImgHomeBgWidget(
            imgaset: 'images/tiga.png',
          ),
          Positioned(
            child: IconButton(
                iconSize: 120,
                icon: Image.asset(
                  'images/perpus.png',
                ),
                onPressed: null),
            right: 20,
            top: 100,
          ),
        ],
      ),
    );
  }
}
