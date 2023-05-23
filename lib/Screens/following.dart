import 'package:flutter/material.dart';
import '../Widgets/drawerMenu.dart';

// ignore: camel_case_types
class FollowScreen extends StatefulWidget {
  const FollowScreen({Key? key}) : super(key: key);

  @override
  _FollowScreenState createState() => _FollowScreenState();
}

// ignore: camel_case_types
class _FollowScreenState extends State<FollowScreen> {
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
                hintText: 'Find Communities',
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: followBody(),
        ),
        drawer: DrawerMenu(),
      ),
    );
  }

  Container followBody() {
    return Container(
      width: 400,
      height: 130,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/img/follow.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(
              'assets/img/tab/search.png',
            ),
            width: 20,
          ),
          Text("Write something down \n to find a community")
        ],
      ),
    );
  }
}
