import 'package:flutter/material.dart';

class ArenanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            gameListItem('Cerdas Cermat'),
            gameListItem('Jawab Soal'),
            gameListItem('Coming Soon!')
          ],
        ),
      ),
    );
  }

  Widget gameListItem(String title) {
    return ListTile(
      title: Text(title),
    );
  }
}
