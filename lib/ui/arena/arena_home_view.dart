import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newfeat/ui/arena/game_cerdascermat_page.dart';
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
              onPressed: () {
                Get.to(GameCerdascermatPage());
              },
            ),
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
          Positioned(
            child: IconButton(
                iconSize: 50,
                icon: Image.asset(
                  'images/cell.png',
                ),
                onPressed: null),
            left: 270,
            top: 150,
          ),
        ],
      ),
    );
  }
}
