import 'package:flutter/material.dart';

class CerdasCermatCariLawanPage extends StatelessWidget {
  final String mapel;

  const CerdasCermatCariLawanPage({Key key, this.mapel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _cardProfil() {
      return Card(
        child: Column(
          children: [
            Image.asset(
              'images/student.png',
              width: MediaQuery.of(context).size.width / 4,
            ),
            Text(
              'Namanya',
            ),
          ],
        ),
      );
    }

    Widget _bodySearching() {
      return Stack(children: [
        Positioned(
          bottom: -10,
          right: -25,
          child: Hero(
            tag: 'myloli',
            child: Image.asset(
              'images/cut.png',
              width: MediaQuery.of(context).size.width / 2.5,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Align(
                  child: _cardProfil(),
                  alignment: Alignment.topLeft,
                ),
              ),
              Image.asset(
                'images/vstext.png',
                width: MediaQuery.of(context).size.width / 4,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Align(
                  child: _cardProfil(),
                  alignment: Alignment.bottomRight,
                ),
              ),
            ],
          ),
        ),
      ]);
    }

    Widget _bodyPlay() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _cardProfil(),
              Image.asset(
                'images/vstext.png',
                width: MediaQuery.of(context).size.width / 4,
              ),
              _cardProfil(),
            ],
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        elevation: 0,
        title: Text('Mencari Lawan....'),
      ),
      // body: _bodySearching(),
      body: _bodyPlay(),
    );
  }
}
