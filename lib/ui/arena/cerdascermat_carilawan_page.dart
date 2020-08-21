import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newfeat/ui/util/screen_size.dart';

class CerdasCermatCariLawanPage extends StatelessWidget {
  final String mapel;

  const CerdasCermatCariLawanPage({Key key, this.mapel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Scsz _scren = Scsz(context);
    Widget _cardProfil() {
      return Card(
        child: Column(
          children: [
            Image.asset(
              'images/student.png',
              width: _scren.width / 4,
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
              width: _scren.width / 2.5,
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
                width: _scren.width / 4,
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
                width: _scren.width / 4,
              ),
              _cardProfil(),
            ],
          ),
          Card(
            color: Colors.amber,
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: ListTile(title: Text('Soalnya')),
          ),
          Divider(),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
            child: ListTile(title: Text('jawaban a')),
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
            child: ListTile(title: Text('jawaban b')),
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
            child: ListTile(title: Text('jawaban c')),
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
            child: ListTile(title: Text('jawaban d')),
          ),
        ],
      );
    }

    Widget _resultView() {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _cardProfil(),
              Image.asset(
                'images/vstext.png',
                width: _scren.width / 4,
              ),
              _cardProfil(),
            ],
          ),
          Image.asset(
            'images/you.png',
            width: _scren.width / 2,
          ),
          MaterialButton(
            onPressed: () => Get.back(),
            child: Text('OK!'),
            color: Colors.green,
          )
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
      // body: _bodyPlay(),
      body: _resultView(),
    );
  }
}
