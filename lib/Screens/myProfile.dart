import 'package:flutter/material.dart';

import '../Widgets/bottomNavBar.dart';

// ignore: camel_case_types
class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

// ignore: camel_case_types
class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Text('My Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 400,
          height: 320,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade100,
                spreadRadius: 5,
                blurRadius: 3,
              )
            ],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.person,
                color: Colors.blue,
                size: 150,
              ),
              Row(
                children: [
                  Image(
                    image: AssetImage('assets/img/profile-user.png'),
                    width: 35,
                  ),
                  Flexible(
                    flex: 2,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.create),
                    color: Colors.blue,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 13.0, bottom: 15),
                child: Row(
                  children: [
                    Image(
                      image: AssetImage('assets/img/profile-phone.png'),
                      width: 35,
                    ),
                    Flexible(
                      flex: 2,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.create),
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Image(
                    image: AssetImage('assets/img/profile-mail.png'),
                    width: 35,
                  ),
                  Text('data') // kullanıcı email
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
