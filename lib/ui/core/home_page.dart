import 'package:flutter/material.dart';
import 'package:newfeat/ui/arena/arena_home_view.dart';
import 'package:newfeat/ui/kelas/kelas_home_view.dart';
import 'package:newfeat/ui/peringkat/peringkat_home_view.dart';
import 'package:newfeat/ui/perpus/perpus_home_view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white,
        backgroundColor: Colors.green[800],
        leading: Icon(Icons.account_circle),
      ),
      body: Stack(
        children: [
          Container(
            child: PageView(
              children: [
                ArenaHomeView(),
                KelasHomeView(),
                PerpusHomeView(),
                PeringkatHomeView(),
              ],
            ),
          ),
          Positioned(
              bottom: -10,
              right: -25,
              child: Image.asset(
                'images/cut.png',
                height: MediaQuery.of(context).size.height / 3,
              )),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.green[900],
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.gamepad),
              title: Text('ARENA'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.check_box),
              title: Text('KELAS'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_library),
              title: Text('PERPUS'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              title: Text('PERINGKAT'),
            ),
          ]),
    );
  }
}
