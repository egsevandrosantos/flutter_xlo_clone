import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:xlo_clone/app/common/custom_drawer/custom_drawer_controller.dart';

class IconSectionWidget extends StatelessWidget {
  _iconTile(
      {String label, IconData iconData, VoidCallback onTap, bool highlighted}) {
    return ListTile(
      title: Text(
        label,
        style: TextStyle(
            fontWeight: FontWeight.w600,
            letterSpacing: .8,
            color: highlighted ? Colors.blue : Colors.black),
      ),
      leading: Icon(
        iconData,
        color: highlighted ? Colors.blue : Colors.black,
      ),
      onTap: onTap,
      contentPadding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
    );
  }

  @override
  Widget build(BuildContext context) {
    final _controller = Provider.of<CustomDrawerController>(context);

    _setPage(int page) {
      Navigator.of(context).pop();
      _controller.setPageSelected(page);
    }

    return Column(
      children: <Widget>[
        Observer(builder: (_) {
          return _iconTile(
              label: 'Anúncios',
              iconData: Icons.list,
              onTap: () {
                _setPage(0);
              },
              highlighted: _controller.pageSelected == 0);
        }),
        Observer(
          builder: (_) {
            return _iconTile(
                label: 'Inserir Anúncio',
                iconData: Icons.edit,
                onTap: () {
                  _setPage(1);
                },
                highlighted: _controller.pageSelected == 1);
          },
        ),
        Observer(
          builder: (_) {
            return _iconTile(
                label: 'Chat',
                iconData: Icons.chat,
                onTap: () {
                  _setPage(2);
                },
                highlighted: _controller.pageSelected == 2);
          },
        ),
        Observer(
          builder: (_) {
            return _iconTile(
                label: 'Favoritos',
                iconData: Icons.favorite,
                onTap: () {
                  _setPage(3);
                },
                highlighted: _controller.pageSelected == 3);
          },
        ),
        Observer(
          builder: (_) {
            return _iconTile(
                label: 'Minha conta',
                iconData: Icons.person,
                onTap: () {
                  _setPage(4);
                },
                highlighted: _controller.pageSelected == 4);
          },
        ),
      ],
    );
  }
}
