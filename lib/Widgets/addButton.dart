import 'package:flutter/material.dart';
// import 'package:animated_floatactionbuttons/animated_floatactionbuttons.dart';
import 'bottomNavBar.dart';

// ignore: camel_case_types
class AddButton extends StatefulWidget {
  @override
  _AddButtonState createState() => _AddButtonState();
}

// ignore: camel_case_types
class _AddButtonState extends State<AddButton> {
  bool state = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Anasayfa()),
              );
            },
            icon: Icon(Icons.arrow_back),
          ),
          title: Text('New Community'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 320),
              child: PopupMenuButton(
                icon: Icon(
                  Icons.camera_alt,
                  color: Colors.blue,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(100.0),
                  ),
                ),
                itemBuilder: (context) {
                  return <PopupMenuItem>[
                    PopupMenuItem(
                      child: Icon(
                        Icons.camera_alt,
                      ),
                    ),
                    PopupMenuItem(
                      child: Icon(
                        Icons.photo_library,
                      ),
                    ),
                  ];
                },
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Center(
                    child: Image(
                      image: AssetImage('assets/logo.png'),
                      width: 200,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 15.0),
                  child: TextFormField(
                    decoration:
                        InputDecoration(labelText: 'Community Name (Required)'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 15.0),
                  child: TextFormField(
                    decoration:
                        InputDecoration(labelText: ' description (Optional)'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 15.0),
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 1, color: Colors.black38)),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 170),
                          child: Text('Private Community'),
                        ),
                        Switch(
                          value: state,
                          onChanged: (bool s) {
                            setState(() {
                              state = s;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                      width: 1,
                      color: Colors.indigo,
                    )),
                    width: 370,
                    height: 40,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'CREATE COMMUNITY',
                        style: TextStyle(color: Colors.indigo),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              // ignore: deprecated_member_use
              label: "My Communities",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              // ignore: deprecated_member_use
              label: "Follow",
            )
          ],
        ),
      ),
    );
  }
}
