import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';
import 'package:xlo_clone/app/common/custom_drawer/icon_section/icon_section_controller.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<IconSectionController>(create: (_) => IconSectionController())
      ],
      child: MaterialApp(
        navigatorKey: Modular.navigatorKey,
        title: 'XLO',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        onGenerateRoute: Modular.generateRoute,
      )
    );
  }
}
