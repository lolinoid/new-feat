import 'package:flutter/material.dart';
import 'package:newfeat/service/static_data.dart';
import 'package:newfeat/ui/arena/cerdascermat_carilawan_page.dart';

class GameCerdascermatPage extends StatefulWidget {
  @override
  _GameCerdascermatPageState createState() => _GameCerdascermatPageState();
}

class _GameCerdascermatPageState extends State<GameCerdascermatPage> {
  String _val;

  void ondropdownChange(value) {
    setState(() {
      _val = value;
      print(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Cerdas Cermat'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Stack(
        children: [
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
          Positioned(
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Column(
                children: [
                  Image.asset(
                    'images/student.png',
                    width: MediaQuery.of(context).size.width / 2,
                  ),
                  Text(
                    'Namanya Adalah',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: DropdownButton<String>(
                          value: _val,
                          hint: Text('Mata Pelajaran'),
                          items: StaticData.mapel
                              .map((e) => DropdownMenuItem<String>(
                                    child: Text(e),
                                    value: e,
                                  ))
                              .toList(),
                          onChanged: (val) {
                            ondropdownChange(val);
                          }),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => CerdasCermatCariLawanPage(
                                mapel: _val,
                              )));
                    },
                    child: Text('Cari Lawan'),
                    color: Colors.yellow[800],
                  )
                ],
              ),
            ),
            top: 20,
          ),
        ],
      ),
    );
  }
}
