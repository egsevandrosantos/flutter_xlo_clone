import 'package:flutter/material.dart';
import 'package:xlo_clone/app/common/custom_drawer/custom_drawer_widget.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('XLO Clone'),
      ),
      drawer: CustomDrawerWidget(),
    );
  }
}
