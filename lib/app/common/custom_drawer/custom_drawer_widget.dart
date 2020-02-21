import 'package:flutter/material.dart';
import 'package:xlo_clone/app/common/custom_drawer/custom_header/custom_header_widget.dart';
import 'package:xlo_clone/app/common/custom_drawer/icon_section/icon_section_widget.dart';

class CustomDrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          CustomHeaderWidget(),
          IconSectionWidget(),
          Divider(color: Colors.grey[500],)
        ],
      ),
    );
  }
}
