import 'package:flutter/material.dart';

import '../Screens/myProfile.dart';



// ignore: camel_case_types
class DrawerMenu extends StatefulWidget {
  const DrawerMenu({ Key? key }) : super(key: key);

  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

// ignore: camel_case_types
class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              flexibleSpace: Image(
                alignment: Alignment.centerLeft,
                image: AssetImage('assets/img/blipnow.png'),
                width: 100,
              ),
              backgroundColor: Colors.white,
            ),
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/img/menu-back.png',
                    ),
                    fit: BoxFit.none),
              ),
              child: Column(
                children: [
                  Container(
                    height: 120,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(width: 1, color: Colors.black12))),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ProfilePage()));
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.person,
                            color: Colors.blue,
                            size: 80,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Title(
                                color: Colors.black,
                                child: Text(
                                  "My Profile",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.black12))),
                      child: TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Share",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 17),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1, color: Colors.black12))),
                      child: TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Log Out",
                              style: TextStyle(color: Colors.red, fontSize: 17),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
  }
}