import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'package:xlo_clone/app/common/custom_drawer/custom_drawer_controller.dart';
import 'package:xlo_clone/app/modules/home/home_page.dart';

class BasePage extends StatefulWidget {
  final String title;
  const BasePage({Key key, this.title = "Base"}) : super(key: key);

  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  final _pageController = PageController();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final _drawerController = Provider.of<CustomDrawerController>(context);
    autorun((_) {
      _pageController.jumpToPage(_drawerController.pageSelected);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: <Widget>[
          HomePage(),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.red,
          )
        ],
      ),
    ));
  }
}
