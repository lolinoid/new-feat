import 'package:flutter/material.dart';
import 'package:newfeat/ui/arena/arena_home_view.dart';
import 'package:newfeat/ui/kelas/kelas_home_view.dart';
import 'package:newfeat/ui/peringkat/peringkat_home_view.dart';
import 'package:newfeat/ui/perpus/perpus_home_view.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int itemSelected;
  PageController pageController;

  @override
  void initState() {
    super.initState();
    itemSelected = 0;
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void onSelectedbotItem(int index) {
    setState(() {
      itemSelected = index;
    });
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }

  void _onpagechanged(index) {
    setState(() {
      itemSelected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white,
        backgroundColor: Colors.blueGrey[400],
        leading: Icon(Icons.account_circle),
      ),
      body: Stack(
        children: [
          Container(
            child: PageView(
              onPageChanged: (index) {
                _onpagechanged(index);
              },
              controller: pageController,
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
      bottomNavigationBar: botnav(),
    );
  }

  Widget botnav() {
    return BottomNavigationBar(
        currentIndex: itemSelected,
        onTap: (index) {
          onSelectedbotItem(index);
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.blueGrey[400],
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.blueGrey[400],
            icon: IconButton(
                icon: Image.asset('images/arena.png'), onPressed: null),
            title: Text('ARENA'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blueGrey[400],
            icon: IconButton(
                icon: Image.asset('images/teacher.png'), onPressed: null),
            title: Text('KELAS'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blueGrey[400],
            icon: IconButton(
                icon: Image.asset('images/brain.png'), onPressed: null),
            title: Text('PERPUS'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blueGrey[400],
            icon: IconButton(
                icon: Image.asset('images/winner.png'), onPressed: null),
            title: Text('PERINGKAT'),
          ),
        ]);
  }
}
