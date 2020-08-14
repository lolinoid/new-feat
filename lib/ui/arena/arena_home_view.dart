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
        ],
      ),
    );
  }
}
