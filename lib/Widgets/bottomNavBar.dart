import 'package:deneme_/Screens/homePage.dart';
import 'package:deneme_/Screens/following.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

// ignore: camel_case_types
class _AnasayfaState extends State<Anasayfa> {
  int seciliSayfa = 0;
  List<Widget> sayfalar = [];
  late AnasayfaList anasayfa;
  late FollowScreen follow;
  @override
  void initState() {
    super.initState();
    anasayfa = AnasayfaList();
    follow = FollowScreen();
    sayfalar = [anasayfa, follow];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: sayfalar[seciliSayfa],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: seciliSayfa,
          onTap: (index) {
            setState(() {
              seciliSayfa = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              // ignore: deprecated_member_use
              label:"My Communities",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              // ignore: deprecated_member_use
              label: "Follow",
            )
          ],
        ));
  }
}
