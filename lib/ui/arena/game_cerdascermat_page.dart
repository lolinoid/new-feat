import 'package:flutter/material.dart';
import 'package:newfeat/service/static_data.dart';

class GameCerdascermatPage extends StatelessWidget {
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
            child: Image.asset(
              'images/cut.png',
              width: MediaQuery.of(context).size.width / 2.5,
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
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: DropdownButton(
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          hint: Text('Mata Pelajaran'),
                          items: StaticData.mapel
                              .map((e) => DropdownMenuItem(child: Text(e)))
                              .toList(),
                          onChanged: null),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
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
