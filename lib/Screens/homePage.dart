import 'package:flutter/material.dart';

import '../Widgets/addButton.dart';
import '../Widgets/drawerMenu.dart';

// ignore: camel_case_types
class AnasayfaList extends StatefulWidget {
  const AnasayfaList({Key? key}) : super(key: key);

  @override
  _AnasayfaListState createState() => _AnasayfaListState();
}

// ignore: camel_case_types
class _AnasayfaListState extends State<AnasayfaList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Icon(Icons.search),
            ),
          ],
          title: Container(
              child: TextFormField(
            decoration: InputDecoration(
                hintText: 'Which community will it be?',
                border: InputBorder.none),
          )),
        ),
        body: ListView(
          children: [],
        ),
        drawer: DrawerMenu(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => AddButton()));
          },
          tooltip: 'Increment',
          child: Icon(
            Icons.add,
            color: Colors.blue,
            size: 45,
          ),
        ),
      ),
    );
  }
}
