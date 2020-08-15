import 'package:flutter/material.dart';
import 'package:newfeat/ui/core/img_home_bg_widget.dart';

class PeringkatHomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          ImgHomeBgWidget(
            imgaset: 'images/empat.png',
          ),
          Positioned(
            child: IconButton(
                iconSize: 90,
                icon: Image.asset(
                  'images/medal.png',
                ),
                onPressed: null),
            top: 100,
            right: 100,
          )
        ],
      ),
    );
  }
}
