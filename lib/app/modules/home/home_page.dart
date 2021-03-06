import 'package:flutter/material.dart';
import 'package:xlo_clone/app/common/custom_drawer/custom_drawer_widget.dart';
import 'package:xlo_clone/app/modules/home/widgets/search_dialog/search_dialog_widget.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _openSearch(String currentSearch) async {
    final String search = await showDialog(
        context: context,
        builder: (context) => SearchDialogWidget(currentSearch: currentSearch));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('XLO Clone'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              this._openSearch("");
            },
          )
        ],
      ),
      drawer: CustomDrawerWidget(),
    );
  }
}
